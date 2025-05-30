#Reto 2 - Listar procesos en ejecucion y finalizar uno

#Muestra una tabla con los procesos en ejecucion, ordenados por uso de CPU
Write-Host "Procesos en ejecucion:"
Get-Process | Select-Object Name, Id, CPU, WS | Sort-Object CPU -Descending | Format-Table -AutoSize

#Solicita al usuario el nombre del proceso a finalizar
$processName = Read-Host "Ingrese el nombre del proceso a finalizar"

#Finaliza el proceso especificado por el usuario
Stop-Process -Name $processName -Force

#Mostra un mensaje confirmando que el proceso ha sido finalizado
Write-Host "Proceso $processName finalizado."
