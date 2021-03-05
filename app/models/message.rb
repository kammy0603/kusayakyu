class Message < ApplicationRecord
  belongs_to :team
  belongs_to :user
  belongs_to :message
end
