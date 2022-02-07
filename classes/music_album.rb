require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :items

  def initialize(publish_date, on_spotify, name)
    super(publish_date)
    @id = Random.rand(1..1000)
    @on_spotify = on_spotify
    @name = name
    @items = []
  end

  def can_be_archived?()
    super && @on_spotify
  end
end
