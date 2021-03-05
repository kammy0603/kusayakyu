class Room < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :messages
end
