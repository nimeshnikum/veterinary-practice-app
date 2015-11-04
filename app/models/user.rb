class User < ActiveRecord::Base
  has_many :pets
  
  enum role: [:user, :admin, :veterinarian, :receptionist, :customer]
  after_initialize :set_default_role, :if => :new_record?
  
  def set_default_role
    self.role ||= :user
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  ZIP_REGEX = /\d{5}/
  validates :name,              :presence     => true,
                                :length       => { maximum: 35 }
  validates :zip,               :length       => { maximum: 5 },
                                :format       => { with: ZIP_REGEX, allow_blank: true }
  validates :years_in_practice, :numericality => { 
                                                   only_integer: true, 
                                                   greater_than: 0, 
                                                   less_than: 101,
                                                   allow_blank: true
                                                  }

end
