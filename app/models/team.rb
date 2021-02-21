class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture, :age, :frequency, :level, :offer
  has_one_attached :teamimage

  with_options presence: true, format: { with: /\A[0-9]+\z/, message: '半角数字を使用してください' } do
    validates :year
  end

  validates :teamname, presence: true
  validates :prefecture, presence: true
  validates :age, presence: true
  validates :frequency, presence: true
  validates :level, presence: true
  validates :offer, presence: true

  validates :prefecture, :age, :frequency, :level, :offer, numericality: { other_than: 1 }
end
