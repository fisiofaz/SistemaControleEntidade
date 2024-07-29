# Manual do Usuário

## Cadastro de Entidades

1. Acesse a tela de cadastro.
2. Preencha os campos obrigatórios: Nome, Tipo, Descrição e Imagem de Capa.
3. Clique em "Salvar" para criar a nova entidade.

Tela de Cadastro

## Listagem e Pesquisa

1. Acesse a tela de listagem.
2. Use o campo de pesquisa para encontrar entidades específicas.
3. Filtre a listagem por tipo, data de criação, etc.

Tela de Listagem

# Documentação Técnica

## Arquitetura do Sistema

O sistema utiliza os seguintes serviços AWS:
- **Amazon S3** para armazenamento de imagens de capa.
- **Amazon RDS** para banco de dados.
- **Amazon Cognito** para autenticação de usuários.

## Diagramas

- **Diagrama de Fluxo de Dados**:
  ![Diagrama de Fluxo de Dados](path_to_diagram)

- **Diagrama de Classes**:
  ![Diagrama de Classes](path_to_diagram)

## Explicação do Código

- **Modelo Entity**:
  ```ruby
  class Entity < ApplicationRecord
    has_one_attached :cover_image
    validates :name, :entity_type, :description, presence: true
  end
