class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :rooms
  has_many :messages
  
  belongs_to :prefecture
  belongs_to :age
  belongs_to :frequency
  belongs_to :level
  belongs_to :offer
  has_one_attached :teamimage

  with_options presence: true, format: { with: /\A[0-9]+\z/, message: '半角数字を使用してください' } do
    validates :year
  end

  with_options presence: true do
  validates :teamimage, :teamname, :prefecture_id, :age_id, :frequency_id, :level_id, :offer_id
  end 

  validates :prefecture_id, :age_id, :frequency_id, :level_id, :offer_id, numericality: { other_than: 1 }
end
