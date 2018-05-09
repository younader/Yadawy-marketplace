class Buyerinfo < ActiveRecord::Base
 # attr_accessor :phone, :fname, :lname, :address

  belongs_to :buyer
  validates :phone, :fname , :lname, :address , presence: true


end
