require_relative './item'
attr_accessor :publish_date, :on_spotify

class MusicAlbum < Item
  def initialize(published_date, on_spotify: false, archived: false)
    super(published_date, archived: false)
    @on_spotify = on_spotify
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?()
    DateTime.now.year - @published_date.year > 10 && @on_spotify == true
  end
end
