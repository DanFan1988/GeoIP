class Location < ActiveRecord::Base
  attr_accessible :country, :region, :city, :zipcode, :latitude, :longitude, :metro_code, :area_code
  
  has_many :ipblocks
end
