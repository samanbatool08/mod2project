class Activity < ApplicationRecord
    has_many :college_activities
    has_many :student_activities
    # has_many :students, through: student_activities
    # has_many :colleges, through: college_activities
end
