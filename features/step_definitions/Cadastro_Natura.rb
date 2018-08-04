#encoding: utf-8

Dado("que eu esteja no site da Natura para criar um cadastro") do                     
    visit(@url)     
  end                                                                                   
                                                                                        
  Quando("preencho todos os campos do formulario e clico no botão continuar") do |table|

    @Cadastro = CadastroPage.new

    @Email = table.rows_hash['e-mail']
    @Cep = table.rows_hash['cep']
    @Nome = table.rows_hash['nome']
    @Senha = table.rows_hash['senha']

    @Cadastro.cadastro_natura(@Email, @Cep, @Nome, @Senha)
  end                                                                                   
                                                                                        
  Quando("concordo com os termos de uso") do                                            
    @Cadastro.concordo        
  end                                                                                   
                                                                                        
  Então("então vou para tela logado") do                                                
    @Cadastro.continuar       
  end                                                                                   