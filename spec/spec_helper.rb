$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'get_images'

module Fixtures
  def fixtures_path
    File.expand_path('../fixtures', __FILE__)
  end
end

RSpec.configure do |config|
  config.include Fixtures
end
