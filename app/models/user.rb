class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,        presence: true
  validates :last_name,       presence: true, format: { with: /[ぁ-んァ-ヶ一-龥々]/ }
  validates :first_name,      presence: true, format: { with: /[ぁ-んァ-ヶ一-龥々]/ }
  validates :last_name_kana,  presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday,        presence: true

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :discipline_id, numericality: { other_than: 1 , message: "can't be blank" }
  validates :graduation_school_id, numericality: { other_than: 1 , message: "can't be blank" }  

  has_many :schedules
  has_many :applicants
  #has_many :messages
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :discipline
  belongs_to :graduation_school

  
end