# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

require 'spec_helper'

module Skeleton
  RSpec.describe App do
    def app
      App
    end

    describe 'GET /' do
      it 'should have a root path' do
        get '/'
        expect(response.status).to eq(200)
      end
    end

    describe 'POST /messages' do
      context 'with valid parameters' do
        it 'should post a message' do
          post '/messages', message: 'Hello, World!'
          expect(response.status).to eq(201)
          expect(response.body).to eq('Hey, World!')
        end
      end

      context 'with valid parameters' do
        it 'should not post a message' do
          post '/messages'
          expect(response.status).to eq(400)
        end
      end
    end

    alias_method :request, :last_request
    alias_method :response, :last_response
  end
end
