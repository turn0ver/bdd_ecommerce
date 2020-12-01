Funcionalidade: Cadastrar novas contas no sistema do site
A fim de criar novas contas
Como um usuario
Eu quero ter acesso ao site

    Contexto:
        Dado que o usuario esteja no site
        E possua acesso ao Criar Conta

    Cenário: Mostra sucesso ao cadastrar uma nova conta
        Quando os campos de cadastro forem preenchidos corretamente
        E clicar em Salvar
        Então o sistema apresenta a mensagem "Conta Cadastrada com Sucesso"

    Cenário: Mostrar erro ao criar uma nova conta
        Quando os campos de cadastro estiverem incompletos
        E clicar em salver
        Então o sistema apresenta a mensagem "Dados incompletos"
        E apresenta os campos faltantes

    