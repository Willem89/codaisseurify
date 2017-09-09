class Artist < ApplicationRecord
  has_many :songs

  def self.order_by_name
   order(:first_name)
 end

 def full_name
   @artist.first_name + "" + @artist.last_name
 end
end
