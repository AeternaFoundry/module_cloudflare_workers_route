output "workers_routes_id" {
  description = "Map of id values across all workers_routes, keyed the same as var.workers_routes except keys with no id are omitted"
  value       = { for k, v in cloudflare_workers_route.workers_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workers_routes_pattern" {
  description = "Map of pattern values across all workers_routes, keyed the same as var.workers_routes except keys with no pattern are omitted"
  value       = { for k, v in cloudflare_workers_route.workers_routes : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "workers_routes_script" {
  description = "Map of script values across all workers_routes, keyed the same as var.workers_routes except keys with no script are omitted"
  value       = { for k, v in cloudflare_workers_route.workers_routes : k => v.script if v.script != null && length(v.script) > 0 }
}
output "workers_routes_zone_id" {
  description = "Map of zone_id values across all workers_routes, keyed the same as var.workers_routes except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_workers_route.workers_routes : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

