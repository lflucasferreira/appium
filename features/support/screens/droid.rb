# frozen_string_literal: true

require_relative 'android/screens'

class DroidScreens
  attr_reader :home, :login, :my_account

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccount.new
  end
end
