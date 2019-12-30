class College < ApplicationRecord
    has_many :applications
    has_many :college_activities
end
