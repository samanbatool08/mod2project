class Student < ApplicationRecord
    has_many :applications
    has_many :student_activities

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
end
