# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "strangebox/version"

Gem::Specification.new do |s|
  s.name        = "strangebox"
  s.version     = Strangebox::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Austin Strange"]
  s.email       = ["austin@2strange.net"]
  s.homepage    = ""
  s.summary     = 'my Version of GemInABox (just in another dress)'
  s.description = 'minimal changed version of cwninja´s GemInABox .. A sinatra based gem hosting app, with client side gem push style functionality.'

  s.rubyforge_project = "strangebox"

  s.files             = %w[README.markdown] + Dir['views/**/*', 'lib/**/*', 'public/**/*']
  s.require_paths     = ['lib']
  
  s.add_dependency('sinatra')
  s.add_dependency('builder')

end
