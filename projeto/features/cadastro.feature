#language:pt

Funcionalidade: Cadastro de conta
    Para que eu possa logar na minha conta
    Sendo um usuário
    Posso cadastrar meu email e minha senha

    @teste
    Cenário: Usuário deve ser cadastrado
    
        Dado que eu entrei na página de login
        E seleciono não sou um membro
        Quando faço registro como "Gabriel", "Borela", "gabriel@borela.com" e "senha123"
        Então devo ser registrado com sucesso