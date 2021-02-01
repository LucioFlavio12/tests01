Quando('eu cadastro meu usuario') do
  user.load
  user.preencher_usuario
  sleep (5)
end

Entao('eu verifico se meu usuario foi cadastrado.') do
  @texto= find('#notice')
  expect(@texto.text).to eql 'Usuário Criado com sucesso'
end
