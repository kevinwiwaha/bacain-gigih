<<<<<<< HEAD
class User < ApplicationRecord
end
=======
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name, :address, :role
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
