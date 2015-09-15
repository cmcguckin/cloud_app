class Project < ActiveRecord::Base
	  has_many :resources
	  has_many :issues
def self.search(search)
  where("name ILIKE ?", "%#{search}%") 
   end
 end
