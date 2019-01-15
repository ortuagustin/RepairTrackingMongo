class ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  def as_json(options = {})
    options[:methods] ||= :id
    super options
  end

  def id
    _id.to_s
  end
end
