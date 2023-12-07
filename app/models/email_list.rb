class EmailList < ApplicationRecord
  validates :address, presence: true, uniqueness: true
end
