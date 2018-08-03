
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'browsenator'
  spec.version       = '1.5.1'
  spec.summary       = 'Easily start different browsers in desktop and mobile devices'
  spec.homepage      = 'https://github.com/aidamanna/browsenator'
  spec.license       = 'MIT'
  spec.authors       = ['Aida Manna']
  spec.email         = ['aidamanna@gmail.com']
  spec.files         = Dir.glob('{lib}/**/*') + %w[README.md]
  spec.require_paths = ['lib']

  spec.add_dependency 'watir', '~> 6.10'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'byebug', '~> 10.0'
  spec.add_development_dependency 'dotenv', '~> 2.4'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rubocop', '~> 0.56.0'
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
  spec.add_development_dependency 'webdrivers', '~> 3.3'
end
