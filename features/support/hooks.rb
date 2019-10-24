# frozen_string_literal: true

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 15
  device_type = 'android'
  @screen = DroidScreens.new if device_type.eql?('android')
  @screen = IOSScreens.new if device_type.eql?('ios')
end

Before('@login') do
  @user = { email: 'fernando@qaninja.io', password: 'pass123' }
  @screen.home.go_account
  @screen.login.with(@user[:email], @user[:password])
end

Before('@clear_cart') do
  @user = { email: 'fernando@qaninja.io', password: 'pass123' }
  PixelAPI.new.remove_my_cart(@user[:email])
end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, 'image/png', 'Screenshot')
  driver.quit_driver
end
