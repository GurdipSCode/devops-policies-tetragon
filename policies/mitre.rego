package tetragon.governance.mitre

deny[msg] {
  input.kind == "TracingPolicy"
  not input.metadata.annotations["mitre.technique"]
  msg := "MITRE ATT&CK technique annotation is required"
}

deny[msg] {
  input.metadata.annotations["mitre.technique"]
  not regex.match("^T[0-9]{4}(\\.[0-9]{3})?$", input.metadata.annotations["mitre.technique"])
  msg := "Invalid MITRE ATT&CK technique format"
}
