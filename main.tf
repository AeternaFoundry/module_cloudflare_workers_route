resource "cloudflare_workers_route" "workers_routes" {
  for_each = var.workers_routes

  pattern = each.value.pattern
  zone_id = each.value.zone_id
  script  = each.value.script
}

