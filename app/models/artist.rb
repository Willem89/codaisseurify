class Artist < ApplicationRecord
  has_many :songs

  def self.order_by_name
   order(:first_name)
 end
end
