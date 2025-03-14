class PiDigit < ApplicationRecord
  validates :position, presence: true, uniqueness: true
  validates :digit, presence: true, inclusion: { in: 0..9 }
  
  scope :ordered, -> { order(position: :asc) }
  
  # Class method to populate the first n digits of pi
  def self.populate_digits(count = 100)
    # Pi digits (excluding the 3 before the decimal)
    pi_digits = "1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
    
    # Clear existing records to avoid duplicates
    self.delete_all
    
    # Add the 3 before the decimal
    self.create(position: 0, digit: 3)
    
    # Add the digits after the decimal
    pi_digits.chars.each_with_index do |digit, index|
      self.create(position: index + 1, digit: digit.to_i)
    end
  end
  
  # Class method to get digits as a formatted string
  def self.to_s(count = 100)
    digits = self.ordered.limit(count + 1).pluck(:digit)
    return "" if digits.empty?
    
    # Format as "3.14159..." with the decimal point
    "#{digits[0]}.#{digits[1..].join}"
  end
end
