class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: :release_year, message: "cannot be repeated by same artist in same year"}
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true, if :released?
  validates :artist_name, presence: true

  def released?
    self.released == true
  end
end 
