# frozen_string_literal: true

class Login
  def with(email, password)
    find_element(id: 'qaninja.com.pixel:id/usernameTxt').send_keys(email)
    find_element(id: 'qaninja.com.pixel:id/passwordTxt').send_keys(password)
    find_element(id: 'qaninja.com.pixel:id/loginButt').click
  end
end

class Home
  def go_account
    find_element(id: 'qaninja.com.pixel:id/accountButt').click
  end

  def choose_category(cat)
    element = find_elements(id: 'qaninja.com.pixel:id/cCatNameTxt')
    element.text(cat.upcase).click
  end
end

class MyAccount
  def view
    find_element(id: 'qaninja.com.pixel:id/account')
  end
end

class Product
  def go_product(prod)
    product = find_elements(id: 'qaninja.com.pixel:id/cpProdNameTxt')
    product.text(prod).click
  end

  def add_to_cart
    find_element(id: 'qaninja.com.pixel:id/pdAddToCartButt').click
  end
end
