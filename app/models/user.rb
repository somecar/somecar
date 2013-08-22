class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  after_create :set_role
  ROLES = {admin: 0, master: 1, customer: 2}.freeze

  def set_role
    self.role = 2
  end
  
  def admin?
    role == 0
  end

  def master?
    role == 1
  end

  def customer?
    role == 2
  end

  def role_name
    ROLES.keys[role]
  end
end
