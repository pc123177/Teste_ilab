Dado('que estou na pagina inicial do Google') do
  home = HomePage.new
  home.load
end

Quando('eu clico na barra de Pesquisa') do
  pesquisa = Pesquisa.new
  pesquisa.barra_pesquisa.click
end

Quando('preencho com o valor iLAB Quality') do
  pesquisa = Pesquisa.new
  pesquisa.barra_pesquisa.set('iLAB Quality')
end

Então('clico em Pesquisa google') do
  pesquisa = Pesquisa.new
  pesquisa.pesquisar.click
  page.has_content?('iLAB Quality')
end
