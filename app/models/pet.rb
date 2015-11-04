class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :appointments
  
  PET_TYPES = %w(Dog Cat Bird)
  
  validates :name_of_pet, :presence => true, :length => { maximum: 35 }
  validates_inclusion_of :type_of_pet, in: PET_TYPES
  validates :breed, :presence => true, :length => { maximum: 35 }
  validates :age, :presence => true
  validates :weight, :presence => true
  validates :date_last_visited, :presence => true
  
end
