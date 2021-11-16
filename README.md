# Servidor Centos con Terraform en AWS

Este proyecto consiste en crear un servidor Centos 7.9 asociado a una
Elastic IP.

Se agregan los siguientes recursos:
* Instancia EC2
* Elastic IP Address
* KeyPair para conexión a la instancia por SSH

En terraform se crea una llave RSA 4096.


IMPORTANTE: Se da por hecho que se cuenta con una VPC con su respectiva
subnet y su VPC.



## Requisitos previos

1.- Agregar un archivo credentials con las llaves AWS con los permisos necesarios.
2.- Generar una VPC y asociar los valores al archivo de variables.tf


## Comandos

Comando para iniciar el proyecto terraform (comprueba el provider AWS)
````
```
terraform init
```
````

Comando que planea las configuraciones que se aplicarán en AWS
````
```
terraform plan
```
````

Comando para aplicar la configuración vista en el plan
````
```
terraform apply --auto-approve
```
````
