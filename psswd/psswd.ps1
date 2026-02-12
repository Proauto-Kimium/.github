
$Senha = "Proauto002@"
$SHA256 = [System.Security.Cryptography.SHA256]::Create()
$Bytes = [System.Text.Encoding]::UTF8.GetBytes($Senha)
$HashBytes = $SHA256.ComputeHash($Bytes)
$Hash = ($HashBytes | ForEach-Object { $_.ToString("x2") }) -join ""
$Arquivo = "senha_hash.csv"
if (!(Test-Path $Arquivo)) {
    "senha,hash" | Out-File $Arquivo -Encoding UTF8
}

#"$Senha,$Hash" | Out-File $Arquivo -Append -Encoding UTF8

#Write-Host "Senha gerada: $Senha"
Write-Host "Hash SHA256: $Hash"
#Write-Host "Salvo em $Arquivo"
