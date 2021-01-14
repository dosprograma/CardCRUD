class Company < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true, length: { minimum: 5 }

end
