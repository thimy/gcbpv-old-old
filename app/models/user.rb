class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :teacher, optional: true
  belongs_to :student, optional: true

  def teacher?
    teacher.present?
  end

  def student?
    student.present?
  end

  def admin?
    admin
  end
end
