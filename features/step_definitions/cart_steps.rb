# frozen_string_literal: true

Dado('que eu quero comprar {string} do {string}') do |game, category|
  @screen.home.choose_category(category)
  @screen.product.go_product(game)
end

Quando('adiciono este item ao carrinho') do
  @screen.product.add_to_cart
end

Quando('preciso fazer login para adicionar o produto') do
  @screen.accept_popup
  @screen.login.with(@user[:email], @user[:password])
  @screen.product.add_to_cart
end

Entao('devo ver o alerta {string}') do |message|
  expect(@screen.popup.text).to eql message
end
