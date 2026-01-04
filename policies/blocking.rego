package tetragon.governance.blocking

deny[msg] {
  input.kind == "TracingPolicy"
  input.metadata.labels.environment == "prd"
  some probe
  some selector
  input.spec.kprobes[probe].selectors[selector].matchActions[_].action == "Block"
  not input.metadata.labels.approved
  msg := "Blocking policies in prod must be explicitly approved"
}
