<<<<<<< HEAD
class DateMentor < ApplicationRecord
end
=======
class DateMentor < ApplicationRecord
    has_one :mentor, :class_name => "Mentor"
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
