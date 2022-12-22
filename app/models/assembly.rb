class Assembly < ApplicationRecord
  has_and_belongs_many :parts
end
