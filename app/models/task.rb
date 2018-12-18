class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :cost, type: Float

  include Searchable

  belongs_to :artifact

  validates :name, :cost, presence: true
  validates :cost, numericality: true

  def self.searchable_fields
    %w[name cost]
  end
end
