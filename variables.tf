variable "workers_routes" {
  description = <<EOT
Map of workers_routes, attributes below
Required:
    - pattern
    - zone_id
Optional:
    - script
EOT

  type = map(object({
    pattern = string
    zone_id = string
    script  = optional(string)
  }))
}

