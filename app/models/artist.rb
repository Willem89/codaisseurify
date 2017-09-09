class Artist < ApplicationRecord
  has_many :songs
    validates :first_name, presence: true
    validates :last_name, presence: true

  def self.order_by_name
   order(:first_name)
 end

 def full_name
   @artist.first_name + "" + @artist.last_name
 end


end
