require 'nokogiri'
require 'httparty'

require 'get_images/version'

module GetImages
  class << self
    def uris_list(website_uri)
      document = Nokogiri::HTML(get_body(website_uri))
      document.css('img').map { |elm| elm.attr('src') }
    end

    private

    def get_body(website_uri)
      HTTParty.get(website_uri).body
    end
  end
end
