class Task < ApplicationRecord
  field :name, type: String
  field :description, type: String
  field :cost, type: Float, default: 0

  include Searchable

  belongs_to :artifact

  validates :name, :cost, presence: true
  validates :cost, numericality: true

  def self.searchable_fields
    %w[name cost]
  end
end
