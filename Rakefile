# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  desc 'Run default task as spec'
  task default: :spec

rescue LoadError => err
  puts err.backtrace
  raise err
end
