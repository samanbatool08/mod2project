class Student < ApplicationRecord
    has_many :applications
    has_many :student_activities
end
