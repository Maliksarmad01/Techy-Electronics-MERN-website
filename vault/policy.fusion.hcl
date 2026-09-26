# Allow the app to read its secrets under secret/data/techy-electronics/*
path "secret/data/techy-electronics/*" {
  capabilities = ["read", "list"]
}

# Allow dynamic database credentials
path "database/creds/techy-electronics-db" {
  capabilities = ["read"]
}

# Deny access to all other secret paths
path "*" {
  capabilities = ["deny"]
}
