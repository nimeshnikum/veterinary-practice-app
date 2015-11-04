class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet
  
  validates :date_of_visit, :presence => true
  validate :not_in_the_past
  validates :pet_id, :presence => true
  validates :user_id, :presence => true
  validates :reason_for_visit, :presence => true
  
  def not_in_the_past
    if date_of_visit < Date.today
      errors.add(:date, "cannot schedule a date in the past.")
    end
  end
  
end
