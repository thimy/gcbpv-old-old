class Staff < ApplicationRecord
  has_one_attached :picture
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
