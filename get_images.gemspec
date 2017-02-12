lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'get_images/version'

Gem::Specification.new do |spec|
  spec.name          = 'get_images'
  spec.version       = GetImages::VERSION
  spec.license       = 'Unlicense'

  spec.author        = 'thelocals_job_applicant'
  spec.email         = 'thelocals_job_applicant@protonmail.com'
  spec.summary       = 'List URIs of images on some page given as an argument.'

  spec.files         = `git ls-files -z`.split("\0").reject { |f| f =~ /^spec\// }
  spec.executables   = 'get_images'


  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'httparty', '~> 0.14'
  spec.add_development_dependency 'nokogiri', '~> 1.7.0'
end
