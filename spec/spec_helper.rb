# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

ENV['RACK_ENV'] = 'test'

require 'skeleton/init'

require 'simplecov'
require 'rspec'
require 'rack/test'

SimpleCov.minimum_coverage(90)
SimpleCov.start do
  add_filter 'lib/skeleton.rb'
  add_filter 'spec'
end

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.filter_run :focus
  config.disable_monkey_patching!
  config.run_all_when_everything_filtered = true
  config.warnings = true
end

require 'skeleton'
