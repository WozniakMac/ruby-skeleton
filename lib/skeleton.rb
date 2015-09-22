# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

require 'sinatra/base'
require 'thin'

# Simple Skeleton App
module Skeleton
  def self.run
    Thin::Server.new('localhost', 9001, App).start
  end
end

require_relative 'skeleton/app'
require_relative 'skeleton/domain'
