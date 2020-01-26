class AlotPhoneNumber < ApplicationRecord
  validates :phone_number, length: {is: 10}, uniqueness: true
end
