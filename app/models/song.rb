class Song < ActiveRecord::Base
  validates :title, uniqueness: {scope: :release_year, message: "cannot be repeated by same artist in same year"}
  
  validates :release_year, presence: true 
end
