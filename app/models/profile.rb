class Profile < ActiveRecord::Base
	 has_many :holidays, dependent: :destroy
	 validates :first_name, presence: true,
                 length: { minimum: 2 }
def self.search(search)
  where("first_name ILIKE ?", "%#{search}%") 
  where("surname ILIKE ?", "%#{search}%")
   end
 end

