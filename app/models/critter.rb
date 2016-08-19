class Critter < ActiveRecord::Base

  # COLORS = ["Black", "White", "Gray", "Orange", "Brown", "Marble", "Tabby"]

  def self.search(search)
    where('lower(name) LIKE ?', "%#{search}%".downcase.gsub(/\s+/, ""))
  end #self.search(search)
end
