module RktMan
  class Image
    attr_reader :raw
    attr_reader :id, :name, :version, :size, :settings

    def initialize(attributes = {})
      @raw = attributes or nil
      @id = attributes.id or nil
      @name = attributes.name or nil
      @size = attributes.size.to_i or 0
      @version = attributes.version or nil
      @settings = Hash.new
      attributes.annotations.each do |annot|
        @settings.merge!({annot.Key => annot.value})
      end
    end
  end
end
