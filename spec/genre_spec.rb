require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  before (:each) do
    @genre = Genre.new('afrobeats')
    @item = Item.new(@genre)
  end

  it 'has name to be afrobeats' do
    expect(@genre.name).to eq 'afrobeats'
  end

end
