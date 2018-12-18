class Revision
  include Mongoid::Document
  include Mongoid::Timestamps

  field :notes, type: String

  belongs_to :repair
end
