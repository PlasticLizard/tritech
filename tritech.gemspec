# encoding: UTF-8
require File.expand_path('../lib/tritech/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'tritech'
  s.homepage = 'http://github.com/PlasticLizard/tritech'
  s.summary = 'ASCII Import/Export in Tritech Amazon format'
  s.require_path = 'lib'
  s.authors = ['Nathan Stults']
  s.email = ['hereiam@sonic.net']
  s.version = Tritech::VERSION
  s.platform = Gem::Platform::RUBY
  s.files = Dir.glob("{lib,test}/**/*") + %w[LICENSE.txt README.rdoc]

  s.add_dependency 'slither'

  s.add_development_dependency 'rake'
end

