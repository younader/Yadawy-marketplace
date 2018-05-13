class Buyerinfo < ActiveRecord::Base
 # attr_accessor :phone, :fname, :lname, :address

  belongs_to :buyer
  validates :phone, :fname , :lname, :address , presence: true
  validates validates_numericality_of :phone
  validates :phone, length: {is: 12}
  enum gender: {
      "Male" => 0,
      "Female" => 1,

  }
end
