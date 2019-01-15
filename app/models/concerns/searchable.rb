module Searchable
  extend ActiveSupport::Concern

  included do
    scope :search, ->(keyword) { any_of(self.conditions(keyword)) }
  end

  module ClassMethods
    def conditions(keyword)
      return if keyword.blank?

      self.searchable_fields.collect { |field| Hash[field, /#{Regexp.quote(keyword)}/i ] }
    end
  end
end