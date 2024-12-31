# 🐋 | MySQL

<div align="center">

<img height="50" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-original-wordmark.svg" />

</div>

# 🐋 | Tópicos

## Data Definition Language (DDL)

A linguagem de definição de dados é a sub-língua responsável pela definição da forma como os dados são estruturados em um banco de dados. Em SQL, isto corresponde à manipulação de tabelas através do `CREATE TABLE`, `ALTER TABLE`, e `DROP TABLE`.

**Folder:** [Data Definition Language DDL](https://github.com/Baku-Stark/Postgres/tree/main/Data%20Definition%20Language_DDL)

## Data Manipulation Language (DML)

A **Data Manipulation Language** é o sub idioma responsável pela adição, edição ou exclusão de dados de um banco de dados. Em SQL, isto corresponde ao `INSERT`, `UPDATE`, e `DELETE`.

**Folder:** [Data Manipulation Language_DML](https://github.com/Baku-Stark/Postgres/tree/main/Data%20Manipulation%20Language_DML)

----

# 🐋 | 1° Método de instalação

> **Verificar a versão do Linux**

```bash
$ lsb_release -a
```

**Output (Ubuntu 24.04):**

```
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 24.04.1 LTS
Release:	24.04
Codename:	noble
```
> **Instalando o MySQL**

**(SERVER)**
```bash
sudo apt install git vim libmysqlclient21 libpcrecpp0v5 libproj22 proj-data mysql-server-8.0 mysql-client-8.0
```
**(WORKBENCH)**
```bash
wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.33-1ubuntu22.04_amd64.deb
```

## Verificando as versões do MySQL

> **(Server)**
```bash
sudo mysqld --version
```

> **(Client)** 
```bash
sudo mysql --version
```

## MYSQL Status
```bash
sudo systemctl status mysql
```

**Outros comandos**
```bash
sudo systemctl restart mysql
sudo systemctl stop mysql
sudo systemctl start mysql
```

## Verificando a Porta de Conexão do MySQL Server no Linux Mint

Listando a porta padrão o MySQL Server
`opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)`

```bash
sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN
```

## Acesso o MySQL Server no Linux Mint
```bash
sudo mysql -u root -p
```
