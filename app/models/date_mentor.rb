class DateMentor < ApplicationRecord
    has_one :mentor, :class_name => "Mentor"
end
