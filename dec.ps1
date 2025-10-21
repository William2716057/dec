
base64 = "b64_input"

[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($base64))
