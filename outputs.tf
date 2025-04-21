output "storage_account_id" {
  value       = azurerm_storage_account.securestorage.id
  description = "The ID of the created Azure Storage Account"
}
