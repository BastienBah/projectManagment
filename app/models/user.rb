class User < ApplicationRecord
  has_and_belongs_to_many :projects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :business, -> { where(business: true) }
  scope :support, -> { where(support: true) }

  def is_admin
    @user = User.where(admin: true)
  end
  
end
