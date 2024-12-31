# 🐋 | MySQL - Triggers

**Triggers** são mecanismos no banco de dados que executam automaticamente uma ação específica (como uma função) em resposta a certos eventos, como **inserção**, **atualização** ou **exclusão** de dados em uma tabela. Eles são úteis para impor regras, validar dados ou realizar ações automáticas no banco de dados.

## Trigger para Garantir que Idade Seja Maior que 18

Segue um exemplo de trigger MySQL para garantir que a idade do cliente seja maior que 18 ao inserir ou atualizar na tabela `Clients`:

```sql
DELIMITER //

CREATE TRIGGER validate_age_before_insert_update
BEFORE INSERT ON Clients
FOR EACH ROW
BEGIN
    IF NEW.age <= 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A idade do cliente deve ser maior que 18.';
    END IF;
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER validate_age_before_update
BEFORE UPDATE ON Clients
FOR EACH ROW
BEGIN
    IF NEW.age <= 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A idade do cliente deve ser maior que 18.';
    END IF;
END;
//

DELIMITER ;
```

### Como funciona:

1. **`BEFORE INSERT` Trigger**:
   - Antes de inserir um registro na tabela `Clients`, verifica se o valor de `age` é maior que 18.
   - Caso a idade seja menor ou igual a 18, lança um erro (`SIGNAL`) com uma mensagem personalizada.

2. **`BEFORE UPDATE` Trigger**:
   - Antes de atualizar um registro existente na tabela `Clients`, verifica novamente se o valor de `age` é maior que 18.
   - Assim, também impede alterações que possam resultar em idades inválidas.

### Testando os Triggers:

Tente inserir um cliente com idade menor ou igual a 18:

```sql
INSERT INTO Clients (ID, name, age, gender, birth_date, created_at, Positions_ID)
VALUES (1, 'John Doe', 17, 'M', '2006-01-01', NOW(), 1);
```

Isso deve resultar em um erro com a mensagem:

```
16:01:06	INSERT INTO Clients (ID, name, age, gender, birth_date, created_at, Positions_ID) VALUES (1, 'John Doe', 17, 'M', '2006-01-01', NOW(), 1)	Error Code: 1644. A idade do cliente deve ser maior que 18.	0.0029 sec
```
