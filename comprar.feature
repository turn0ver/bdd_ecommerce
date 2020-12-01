Funcionalidade: Realizar uma compra no site
A fim de realizar uma compra
Como um usuario cadastrado
Eu quero ser capaz de realizar a compra, verificar e escolher frete, adicionar e remover items,
escolher a forma de pagamento

    Contexto:
        Dado que o usuario esteja logado

    Cenário: Adicionar um produto ao carrinho de compras
        Dado que esteja logado
        Quando adicionar um produto ao carrinho
        Então o produto deve ser adicionado

    Cenário: Verificar frete
        Dado que esteja no carrinho de compras
        Quando preencher o campo cep
        E o carrinho ter produto
        E clicar em "calcular frete"
        Então o sistema deve apresentar frete calculado
        E o sistema apresenta opções de frete
    
    Cenário: Erro ao verificar frete
        Dado que esteja no carrinho de compras 
        Quando não preencher o campo cep completo
        E clicar em "calcular frete"
        Então o sistema deve apresentar a mensagem "Por favor, digite o seu CEP no espaço acima"

    Cenário: Adicionar mais de um produto
        Dado que esteja na pagina do produto
        Quando adicionar <nProduto> ao carrinho
        Então <nProduto> deve ser adicionado
    
    Cenário: Adicionar produto esgotado
        Dado que esteja na pagina do produto
        Quando adicionar um produto ao carrinho
        E esse produto estiver esgotado no estoque
        Então o sistema apresenta a mensagem "Produto não disponivel"
        E apresenta a opção "Me informe quando o item estiver disponivel"

    Cenário: Remover um produto
        Dado que algum produto esteja no carrinho
        Quando clicar em remover
        Então o sistema deve remover o item selecionado
        E o sistema apresentar mensagem "item removido com sucesso"

    Cenário: Finalizar um pedido com cep preenchido
        Dado que o campo CEP esteja preenchido corretamente
        Quando clicar em Finalizar pedido
        Então o sistema deve apresentar resumo do pedido
        E opções de frete
        E campo Cupom de Desconto
    
    Cenário: Finalizar um pedido sem cep preenchido
        Dado que o campo CEP esteja vazio
        Quando clicar em Finalizar pedido
        Então o sistema deve apresentar resumo do pedido
        E opções de entrega para preenchimento
        E campo Cupom de Desconto
    
    Cenário: Escolher forma de pagamento Paypal
        Dado que todos os campos estejam completos
        Quando clicar em finalizar sua compra
        Então o sistema deve redirecionar ao Paypal
        E finalizar o pedido
    
    Cenário: Escolher forma de pagamento PagSeguro
        Dado que todos os campos estejam completos
        Quando clicar em finalizar sua compra
        Então o sistema deve redirecionar ao PagSeguro
        E finalizar o pedido