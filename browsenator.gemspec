
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'browsenator'
  spec.version       = '1.1.0'
  spec.summary       = 'Easily start different browsers'
  spec.homepage      = 'https://github.com/aidamanna/browsenator'
  spec.authors       = ['Aida Manna']
  spec.email         = ['aidamanna@gmail.com']
  spec.files         = Dir.glob('{lib}/**/*') + %w[README.md]
  spec.require_paths = ['lib']

  spec.add_dependency 'watir', '6.10.3'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'byebug'
end
