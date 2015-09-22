# -*- mode: ruby -*-
# -*- coding: utf-8 -*-
# vi: set ft=ruby :
# vi: set fileencoding=utf-8 :
# encoding: utf-8

module Skeleton
  module Domain
    # Performs Simple Math Operations
    class Math
      def factorial(number)
        return Float::NAN if number < 0
        return 1 if number == 0 || number == 1
        number * factorial(number - 1)
      end
    end
  end
end
