# frozen_string_literal: true

require 'appium_console'
require 'appium_lib'
require 'pry'

file = File.expand_path('caps/appium.txt', __dir__)
caps = Appium.load_appium_txt file: file, verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
