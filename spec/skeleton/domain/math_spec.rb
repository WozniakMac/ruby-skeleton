# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

require 'spec_helper'

RSpec.describe Skeleton::Domain::Math do
  let(:math) { Skeleton::Domain::Math.new }

  describe '#factorial' do
    context 'with positive integers' do
      it 'should return their factorial value (n!)' do
        expect(math.factorial(0)).to eq(1)
        expect(math.factorial(1)).to eq(1)
        expect(math.factorial(5)).to eq(120)
      end
    end

    context 'with negative integers' do
      it 'should return not a number' do
        expect(math.factorial(-1)).to be_nan
        expect(math.factorial(-2)).to be_nan
        expect(math.factorial(-5)).to be_nan
      end
    end
  end
end
