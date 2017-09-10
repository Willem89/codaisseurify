class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_many :photos
    validates :first_name, presence: true
    validates :last_name, presence: true


end
