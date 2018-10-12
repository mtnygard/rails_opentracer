lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_opentracer/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_opentracer'
  spec.version       = RailsOpentracer::VERSION
  spec.authors       = ['Nicholas Erasmus']
  spec.email         = ['nuclearnicdev@gmail.com']

  spec.summary       = %(Gem that auto-instruments application with OpenTracing)
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/nuclearnic/rails_opentracer'
  spec.license       = 'MIT'

  spec.files         =
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.15.3'
  spec.add_dependency 'opentracing', '~> 0.4.0'
  spec.add_dependency 'zipkin', '~> 1.6.1'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'combustion', '~> 0.7.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'sqlite3'
end
