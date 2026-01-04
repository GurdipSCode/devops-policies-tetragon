package tetragon.governance.ownership

deny[msg] {
  input.kind == "TracingPolicy"
  not input.metadata.labels.owner
  msg := "TracingPolicy must define an owner"
}
