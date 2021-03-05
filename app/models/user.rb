class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :rooms
  has_many :messages
  
  belongs_to :prefecture
  belongs_to :term
  belongs_to :level
  belongs_to :frequency
  belongs_to :registration

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  # validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/, message: '全角文字を使用してください' } do
    validates :name
  end
  with_options presence: true, format: { with: /\A[ァ-ヶ]+\z/, message: '全角カナ文字を使用してください' } do
    validates :name_kana
  end
  validates :avatar, presence: true
  validates :birthday, presence: true
  validates :prefecture_id, presence: true
  validates :term_id, presence: true
  validates :level_id, presence: true
  validates :frequency_id, presence: true
  validates :registration_id, presence: true

  validates :prefecture_id, :term_id, :level_id, :frequency_id, :registration_id, numericality: { other_than: 1 }
end
