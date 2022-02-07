class Genre
  attr_reader :items, :name

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    if @items << item unless @items.include?(item)
      puts 'item already exists'
    else
      @items.push(item)
      item.genre = self
  end
end
