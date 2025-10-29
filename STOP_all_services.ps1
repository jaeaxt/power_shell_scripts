# Nombre del cluster
$clusterName = "CLUSTERNAME"

# Obtener los ARN de los servicios
$serviceArns = aws ecs list-services --cluster $clusterName --query "serviceArns[]" --output text

# Dividir la salida en un array (los ARN vienen separados por espacios)
$services = $serviceArns -split "\s+"

# Iterar y actualizar cada servicio
foreach ($serviceArn in $services) {
    Write-Host "Actualizando servicio: $serviceArn"
    #aws ecs update-service --cluster $clusterName --service $serviceArn --desired-count 0
}

