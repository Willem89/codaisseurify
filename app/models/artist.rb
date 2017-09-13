class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy

    validates :first_name,  presence: true
    validates :last_name,   presence: true
    validates :genre,       presence: true

    def fullname
      "#{first_name} #{last_name}"
    end


end
