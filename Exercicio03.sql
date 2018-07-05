SELECT clientes.nome, emails.valor FROM clientes
JOIN emails ON (emails.id_clientes = clientes.id)
ORDER BY LEN(emails.valor) DESC