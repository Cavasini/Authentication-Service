# Authentication Service

Este é um serviço de autenticação desenvolvido com **Spring Boot** e **Java**, utilizando **PostgreSQL** como banco de dados. O sistema permite registro e login de usuários, com criptografia de senhas e validação de roles para controle de acesso.

## 🚀 Tecnologias Utilizadas

- **Java 21**
- **Spring Boot**
- **Spring Security**
- **JWT (JSON Web Token)**
- **PostgreSQL**
- **JPA/Hibernate**
- **BCrypt para Hash de Senhas**

## 📌 Funcionalidades

✅ Registro de usuários com criptografia de senha
✅ Login com validação de credenciais
✅ Geração e validação de tokens JWT
✅ Controle de acesso baseado em roles (admin, user, etc.)
✅ Integração com PostgreSQL para armazenamento de usuários

## 🔧 Configuração e Execução

### 📌 Pré-requisitos

- Java 21
- Docker e Docker Compose instalados
- PostgreSQL instalado e rodando
- Maven instalado

### 🏃‍♂️ Rodando o Projeto

1. Clone o repositório:

   ```sh
   git clone https://github.com/seuusuario/authentication-service.git
   ```

2. Acesse a pasta do projeto:

   ```sh
   cd authentication-service
   ```
   
3. Inicie o banco de dados com Docker Compose:

   ```sh
   docker-compose up -d
   ```
   
4. Compile e execute o projeto:

   ```sh
   mvn spring-boot:run
   ```

4. A API estará disponível em `http://localhost:8010`

## 🔑 Endpoints Principais

### 🚀 Registro de Usuário

**POST** `/auth/register`

```json
{
  "login": "user@email.com",
  "password": "senhaSegura",
  "role": "ADMIN"
}
```

### 🔐 Login

**POST** `/auth/login`

```json
{
  "login": "user@email.com",
  "password": "senhaSegura"
}
```

Resposta:

```json
{
  "token": "jwt-token-gerado"
}
```

## 📜 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para usá-lo e contribuir! 🎉

---

📌 **Dicas Futuras:**
- Melhorar o gerenciamento de tokens JWT (expiração, refresh tokens)
- Implementar um sistema de recuperação de senha
- Adicionar testes unitários e de integração
