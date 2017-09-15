class SongSerializer < ActiveModel::Serializer
  attributes :title, :album, :video_url

  belong_to :artist
end
