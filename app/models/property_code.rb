class PropertyCode < ActiveRecord::Base
  attr_accessible :property_code

  has_many :dnis_entries
end
