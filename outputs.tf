output "maintenance_assignments" {
  description = "Map of created maintenance assignments"
  value       = azurerm_maintenance_assignment_dynamic_scope.this
}