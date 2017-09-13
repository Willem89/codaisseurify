class Song < ApplicationRecord
  belongs_to :artist
  validates :title,           presence: true
  validates :album,           presence: true
  validates :video_url,       presence: true
end
