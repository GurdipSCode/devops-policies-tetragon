package tetragon.governance.severity

valid_severity := {"low", "medium", "high", "critical"}

deny[msg] {
  input.kind == "TracingPolicy"
  not valid_severity[input.metadata.labels.severity]
  msg := "Invalid severity label"
}
