require_relative '../classes/music_album'

describe MusicAlbum do
  before (:each) do
    @musicalbum = MusicAlbum.new(false, 'artist', '03/04/1990')
  end

  it 'can has an instance' do
    expect(@musicalbum).to be_an_instance_of MusicAlbum
  end

  it 'has on_spotify to be false' do
    expect(@musicalbum.on_spotify).to be false
  end

end