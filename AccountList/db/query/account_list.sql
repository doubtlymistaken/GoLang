-- name: CreateAccountList :execresult 
INSERT INTO account_list (
  name, account_number, product_type, account_type , bank , currency, account_type_code, is_default, created_at
) VALUES (
  $1,$2,$3,$4,$5,$6,$7,$8,$9
);

-- name: ListAccountList :many
SELECT * FROM account_list
ORDER BY id;

-- name: GetAccount :one
SELECT * FROM account_list
WHERE id = $1 LIMIT 1;

-- name: UpdateAccountDefaultAccount :exec
UPDATE account_list SET is_default = $2
WHERE id = $1;

-- name: DeleteAccount :exec
DELETE FROM account_list
WHERE id = $1;