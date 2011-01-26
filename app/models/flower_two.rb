class FlowerTwo < ActiveRecord::Base
  belongs_to :bed
  
  validates :latin_name, :length => { :maximum => 20 }
end
