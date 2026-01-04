package tetragon.governance.labels

deny[msg] {
  input.kind == "TracingPolicy"
  missing := {"severity", "category", "owner", "environment"} - input.metadata.labels
  count(missing) > 0
  msg := sprintf("Missing required labels: %v", [missing])
}
