package tetragon.governance.environment

deny[msg] {
  input.kind == "TracingPolicy"
  input.metadata.labels.environment == "dev"
  some probe
  input.spec.kprobes[probe].selectors[_].matchActions[_].action == "Block"
  msg := "Blocking is not allowed in dev"
}
