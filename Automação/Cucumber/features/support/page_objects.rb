class Pesquisa < SitePrism::Page
  element :barra_pesquisa, "input[name='q']"
  element :pesquisar, "input[name='q']"
end
class HomePage < SitePrism::Page
  set_url 'https://www.google.com'
  end
