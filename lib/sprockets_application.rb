module SprocketsApplication
  mattr_accessor :use_page_caching
  self.use_page_caching = true
  
  class << self
    def routes(map)
      map.resources(:sprockets)
    end

    def encode source_files
      ERB::Util.h(Base64.encode64(source_files.to_json).gsub("\n",''))
    end

    def decode hash
      JSON.parse URI.unescape(Base64.decode64(hash))
    end
  end
end
