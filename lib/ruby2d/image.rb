# image.rb

module Ruby2D
  class Image
    include Renderable

    attr_accessor :x, :y, :width, :height, :data
    attr_reader :path, :color, :z
    
    def initialize(x, y, path)
      
      # TODO: Check if file exists
      #   `File.exists?` is not available in MRuby
      #   Ideally would do:
      #     unless File.exists? path
      #       raise Error, "Cannot find image file `#{path}`"
      #     end
      
      @type_id = 3
      @x, @y, @z, @path = x, y, 0, path
      @color = Color.new([1, 1, 1, 1])
      init(path)
      add
    end
    
    def color=(c)
      @color = Color.new(c)
    end
  end
end
