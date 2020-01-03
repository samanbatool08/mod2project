class College < ApplicationRecord
    has_many :applications
    has_many :college_activities
    has_many :activities, through: :college_activities
end
