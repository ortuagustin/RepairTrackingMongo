class Revision < ApplicationRecord
  field :notes, type: String

  belongs_to :repair
end
