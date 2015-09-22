# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

module Skeleton
  # HTTP Interface to App
  class App < Sinatra::Base
    set :root, File.expand_path('../../..', __FILE__)

    get '/' do
      [200, { 'content-type' => 'text/html' }, File.read('public/index.html')]
    end

    post '/messages' do
      halt 400 if params[:message].nil? || /\A\s*\Z/ =~ params[:message]
      [201, { 'content-type' => 'text/plain' },
       params[:message].gsub('Hello', 'Hey')]
    end
  end
end
