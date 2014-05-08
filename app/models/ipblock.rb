class Ipblock < ActiveRecord::Base
  attr_accessible :start, :end, :location_id
  
  belongs_to :location
end
