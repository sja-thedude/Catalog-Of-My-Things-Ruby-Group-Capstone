require_relative './item'

class MusicAlbum < Item
  def initialize(on_spotify, publish_date = Time.now)
    super(publish_date)
    @on_spotify = on_spotify
  end
end
