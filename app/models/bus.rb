class Bus < ActiveRecord::Base
    has_many :students
    has_many :bus_drivers
end