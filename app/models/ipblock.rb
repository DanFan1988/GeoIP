class Ipblock < ActiveRecord::Base
  attr_accessible :start, :end, :location_id
end
