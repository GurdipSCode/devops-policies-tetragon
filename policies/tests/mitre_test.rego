package tetragon.governance.mitre.test

import data.tetragon.governance.mitre.deny

test_missing_mitre {
  deny with input as {
    "kind": "TracingPolicy",
    "metadata": {
      "annotations": {}
    }
  }
}
