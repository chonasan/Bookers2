class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :book, dependent: :destroy
  attachment :image
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :introduction, length: { maximum: 50 }      # 「50文字以下」
  
  
end
