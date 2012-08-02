class DnisEntry < ActiveRecord::Base
  attr_accessible :dnis_entry, :password, :property_code_id, :username

  belongs_to :property_code
end
