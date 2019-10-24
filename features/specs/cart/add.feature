#language: pt

Funcionalidade: Adicionar item ao carrinho
  Para que eu possa comprar jogos clássicos na loja
  Sendo um usuário cadastrado
  Posso adicionar itens ao meu carrinho

  @add_game @clear_cart @login
  Cenario: Usuário logado adiciona produto
    Dado que eu quero comprar "F-Zero" do "Super Nintendo"
    Quando adiciono este item ao carrinho
    Entao devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"

  @add_game_before_login @clear_cart
  Cenario: Usuário não logado adiciona produto
    Dado que eu quero comprar "Golden Axe" do "Mega Drive"
    Quando adiciono este item ao carrinho
    Mas preciso fazer login para adicionar o produto
    Entao devo ver o alerta "Você adicionou Golden Axe ao seu carrinho!"