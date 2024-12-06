Funcionalidade: Cadastro de Dog Walkers

   Sendo um visitante do site que gosta de cuidar de pets
   Posso fazer meu cadastro como Dog Walker
   Para que eu possa ter uma nova fonte de renda com essas atividades



Modelagem de dados:

| CSS Selector                 | Elemento                                               | Estado        | Obrigatório? |
| -----------------------------|--------------------------------------------------------|---------------|--------------|
| input[name="name"]           | Campo de texto "Nome completo"                         | Habilitado    | Sim          |
| input[name="email"]          | Campo de texto "E-mail"                                | Habilitado    | Sim          |
| input[name="cpf"]            | Campo de texto "CPF somente números"                   | Habilitado    | Sim          |
| input[name="cep"]            | Campo de texto "CEP"                                   | Habilitado    | Sim          |
| input[name="addressStreet"]  | Campo de texto "Rua"                                   | Desabilitado  | Sim          |
| input[name="addressNumber"]  | Campo de número "Número"                               | Habilitado    | Sim          |
| input[name="addressDetails"] | Campo de texto "Complemento"                           | Habilitado    | Não          |
| input[name="addressDistrict"]| Campo de texto "Bairro"                                | Desabilitado  | Sim          |
| input[name="addressCityUf"]  | Campo de texto "Cidade/UF"                             | Desabilitado  | Sim          |
| input[type="file"]           | Campo de upload de arquivo (documento de identificação)| Habilitado    | Sim          |

Cenário de aceite:

Contexto:
    Dado que visito o site walkdog 
       E que desejo me tornar Dog Walker

Cenário: Cadastro de Dog Walker com sucesso
 
       Quando submeto o formulário de cadastro com meus dados pessoais
       Então devo ver uma mensagem de sucesso informando que meu cadastro foi para análise

Cenário: CPF incorreto

       Quando submeto o formulário informando um cpf incorreto
       Então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenário: Email incorreto

       Quando submeto o formulário informando um email incorreto
       Então devo ver uma mensagem de alerta com o seguinte texto: "Informe um email válido" 

Cenário: Campos obrigatórios

       Quando submeto o formulário sem preencher nenhum dos campos
       Então deve ver uma mensagem de alerta avisando que esses campos são obrigatórios