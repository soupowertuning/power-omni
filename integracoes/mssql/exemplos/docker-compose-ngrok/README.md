# Usando com docker e ngrok

Este diretório contém um exemplo de como usar docker compose e ngrok, assim você pode conectar com o power omni e sql direto da sua máquina.


Pré-requisitos:

- Crie uma conta no site ngrok (https://ngrok.com/)
- Obtenha seu auth key (https://dashboard.ngrok.com/get-started/your-authtoken)
- Obtenha o nome de dominio dev em https://dashboard.ngrok.com/domains
- Crie um banco no seu SQL e um usuario e senha (Sql authentication)
- Definda as seguintes variáveis de ambiente:
	- **NGROK_TOKEN**: O token do ngrok
	- **NGROK_DOMAIN**: O domínio de dev (sem o https)
	- **SQL_CONNECTION**: A string de conexão com o seu SQL Server. Lembrando que se o SQL estiver no host, use o endereço host.docker.internal


Exemplo de como subir com powershell:

```powershell 
# clone este repositorio!

# assumindo que estamos ja no diretório raiz do projeto
cd exemplos/docker-compose-ngrok 

$Env:NGROK_TOKEN = "tokentestebgrok";
$Env:NGROK_DOMAIN = "meudominio-dev.ngrok-free.dev";
$Env:SQL_CONNECTION = "Server=host.docker.internal,14567;Database=Banco;User Id=Usuario;Password=Senha"

docker compose up
```
