SELECT clientes.nome, celulares.valor FROM clientes
JOIN celulares ON (celulares.id_clientes = clientes.id)