# Walkdog - Cuidado e diversão em cada passo! 🐾 

A Walkdog é um WebApp desenvolvido para ajudar Dog Walkers (passeadores de cães) a otimizar a comunicação entre os cuidadores e os donos de pets. A ideia é permitir que donos que não têm tempo de passear com seus cães possam contratar passeadores confiáveis para garantir cuidado e diversão a cada passo!
🐾

---
## 🎯 Objetivo

O objetivo deste projeto é automatizar o fluxo de cadastro de usuários Dog Walkers por meio de testes End-to-End (E2E), garantindo que todos os campos e fluxos de interação funcionem corretamente. O foco é assegurar que campos como CPF, RG, e-mail e CEP sejam validados conforme esperado, e que os fluxos de interação, como a submissão do formulário e as respostas do sistema, sejam executados sem falhas, proporcionando uma experiência de usuário estável e eficiente.

---

## ✅ Testes Implementados 

O projeto conta com uma suíte de testes que valida as principais funcionalidades do cadastro de Dog Walkers.  

### **Principais Casos de Teste Automatizados**  

1. **Cadastro com Sucesso**  
   - Valida o fluxo de cadastro bem-sucedido.  

2. **CPF Inválido**  
   - Testa a rejeição de um CPF no formato incorreto.  

3. **E-mail Inválido**  
   - Verifica a validação de um e-mail com formato inválido.  

4. **Campos Obrigatórios**  
   - Garante que mensagens de erro sejam exibidas quando campos obrigatórios não são preenchidos.  

5. **Cadastro com CEP Inválido**  
   - Valida a rejeição de um CEP no formato incorreto.  

6. **Cadastro sem Anexar Arquivo**  
   - Verifica se o sistema exibe mensagem apropriada ao não anexar o documento necessário.  

7. **Interface Amigável**  
   - Garante uma experiência simples e intuitiva para os usuários. 

---
## 🛠️ Tecnologias Utilizadas  

- **Robot Framework**: Automação dos testes funcionais da aplicação.  
- **SeleniumLibrary**: Interação com os elementos da interface web.  
- **Estrutura Page Object**: Organização e encapsulamento das ações e elementos das páginas.  
- **Linguagem Gherkin**: Descrição de cenários de teste de forma clara e objetiva.  
---

## 📂 Estrutura do Projeto  

```plaintext

├── fixtures/
│   └── document.png          # Arquivo usado para upload de documentos
├── resources/
│   ├── pages/
│   │   ├── base.resource      # Configurações base para o projeto
│   │   ├── SignupPage.robot   # Page Object para a página de cadastro
├── tests/
│   ├── cadastro.robot         # Suíte de testes para o cadastro
│   ├── home.robot             # Suíte de testes para a página inicial
├── README.md                  # Documentação do projeto 
```

## 🚀 Como Executar a Suite  

## 🔧 Pré-requisitos  

Antes de começar, você precisará ter as seguintes ferramentas instaladas na sua máquina:  

- **Python**  
- **Robot Framework**  
- **SeleniumLibrary**  
- **Browser ChromeDriver

Clone este repositório em sua máquina local:
```
git clone https://github.com/mthsqa/walkdog
```


Certifique-se de que todas as dependências estão instaladas, Robot Framework e SeleniumLibrary:

```
pip install robotframework
pip install robotframework-seleniumlibrary
```

Execute a suíte de testes com o comando:
```
robot -d ./logs cadastro.robot
ou
python -m robot -d ./logs cadastro.robot
```

Contribua com o Projeto 🙌
Se você quiser apoiar o projeto, deixe uma ⭐.

Desenvolvido por Matheus Silva


