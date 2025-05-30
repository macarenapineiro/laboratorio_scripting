#Reto 2 - Listar procesos y finalizar uno
Write-Host "Procesos en ejecucion:"
Get-Process | Select-Object Name, Id, CPU, WS | Sort-Object CPU -Descending | Format-Table -AutoSize
$processName = Read-Host "Ingrese el nombre del proceso a finalizar"
Stop-Process -Name $processName -Force
Write-Host "Proceso $processName finalizado."
