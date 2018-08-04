class CadastroPage < SitePrism::Page
    element :primeira_compra, :xpath, "//label[@class='custom-radio show-first-buy']"
    element :campo_email, '#field-identification-email'
    element :campo_cep, "#cep"
    element :campo_nome, "#new-name"
    element :campo_senha, "#new-password"
    element :campo_concordo, :xpath, "//span[contains(text(),'li e concordo com os')]"
    element :campo_continuar, :xpath, "//div[@class='button-group']//a[@title='continuar'][contains(text(),'continuar')]"
    

    def cadastro_natura(email, cep, nome, senha)
        primeira_compra.click
        campo_email.set email
        campo_cep.set cep
        campo_nome.set nome
        campo_senha.set senha        
    end

    def concordo()
        campo_concordo.click
    end

    def continuar()
        campo_continuar.click
    end    
end