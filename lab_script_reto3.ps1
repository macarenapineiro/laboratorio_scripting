#Reto 3: Crear una carpeta con la fecha actual

# Obtener la fecha actual en formato aaaa-MM-dd
$fecha = Get-Date -Format "yyyy-MM-dd"

# Crear la carpeta con el nombre basado en la fecha
New-Item -ItemType Directory -Path $fecha -Force | Out-Null

# Mostrar un mensaje confirmando la creación de la carpeta
Write-Host "Carpeta '$fecha' creada."