
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moira/version'

Gem::Specification.new do |spec|
  spec.name          = 'moira'
  spec.version       = Moira::VERSION
  spec.authors       = ['kbaba1001']
  spec.email         = ['kbaba1001@users.noreply.github.com']
  spec.summary       = 'Bring happiness to ActiveRecord Validation'
  spec.description   = 'Make ActiveRecord Validation easier to share as Schema'
  spec.homepage      = 'https://github.com/kbaba1001/moira'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'activerecord'
end
