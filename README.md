# Kanikua-itsi

## Descripción del proyecto

**Kánikua Itsï** es un proyecto tecnológico enfocado en la prevención de inundaciones mediante el monitoreo ambiental, sensores IoT, comunicación LoRa e infraestructura verde.

La plataforma web permite visualizar información del sistema de monitoreo y contribuir a la detección temprana de posibles riesgos de inundación.

# Guía de instalación y ejecución

Esta guía explica paso a paso cómo descargar y ejecutar la página web utilizando **Docker**.

No es necesario tener conocimientos previos de programación.

## 1. Requisitos previos

Antes de comenzar, instalar las siguientes herramientas:

### Docker Desktop

Docker permite ejecutar aplicaciones en contenedores sin necesidad de instalar manualmente todas las dependencias.

**Pasos de instalación:**

1. Ingresar a https://www.docker.com/products/docker-desktop/
2. Descargar Docker Desktop para el sistema operativo correspondiente.
3. Ejecutar el instalador.
4. Seguir las instrucciones de instalación.
5. Reiniciar la computadora si es necesario.
6. Abrir Docker Desktop.
7. Esperar a que el motor de Docker esté funcionando.

**Verificar la instalación:**

Abrir una terminar (PowerShell, CMD o terminal de VS Code) y ejecutar:

```bash
docker --version
```

Verificar también Docker Compose:

```bash
docker compose version
```

Si ambos comandos muestran sus respectivas versiones, la instalación fue exitosa.

### Git

Git permite descargar el código del proyecto desde GitHub.

**Pasos de instalación:**

1. Ingresar a https://git-scm.com/downloads
2. Descargar Git.
3. Ejecutar el instalador.
4. Seguir las instrucciones de instalación.

**Verificar la instalación:**

```bash
git --version
```

### Visual Studio Code (opcional)

Visual Studio Code permite visualizar y modificar los archivos del proyecto.

Descargar desde:

https://code.visualstudio.com/

## 2. Descargar el proyecto

### Paso 1. Abrir una terminal

En Windows, abrir PowerShell o la terminal de Visual Studio Code.

### Paso 2. Clonar el repositorio

Ejecutar:

```bash
git clone https://github.com/Santibanez-22420423/Kanikua-itsi.git
```

Este comando descargará todos los archivos del proyecto en una carpeta llamada 'Kanikua-itsï'.

### Paso 3. Entrar a la carpeta.

Ejecutar:

```bash
cd Kanikua-itsi
```

**Importante:** Los siguientes comando deben ejecutarse dentro de esta carpeta.

## 3. Iniciar Docker Desktop

Antes de ejecutar la página web:

1. Abrir Docker Desktop.
2. Esperar a que el motor de Docker esté funcionando.
3. Mantener Docker Desktop abierto.

Para comprobar su funcionamiento:

```bash
docker info
```

Si el comando muestra información sobre Docker, significa que el motor está disponible.

## 4. Levantar la página web

Dentro de la carpeta principal del proyecto, ejecutar:

```bash
docker compose up --build -d
```

### Verificar que los contenedores estén funcionando

Ejecutar:

```bash
docker compose ps
```

Este comando mostrará los contenedores y su estado.

Los servicios principales deberán aparecer en ejecución.

## 5. Abrir la página web

Una vez iniciados los contenedores:

1. Abrir Google Chrome, Microsoft Edge o cualquier navegador.
2. Introducir la dirección local configurada para el proyecto.

Por ejemplo:

```text
http://localhost:3000
```

**Importante** EL puerto '3000' es únicamente un ejemplo.

El puerto real dependerá de la configuración establecida en el archivo 'docker-compose.yml' o 'compose.yaml'.

## 6. Detener la página web

Para detener los servicios, ejecutar:

```bash
docker compose down
```

Este comando detiene y elimina los contenedores creados por Docker Compose.

No elimina los archivos del proyecto ni los datos almacenados en volúmenes persistentes.

## 7. Volver a iniciar el proyecto

Si anteriormente ya se construyeron las imágenes, ejecutar:

```bash
docker compose up -d
```

Este comando iniciará los contenedores sin reconstruir las imágenes existentes.

Después, abrir nuevamente la dirección local correspondiente en el navegador.

## 8. Actualizar el proyecto

Cuando existan cambios nuevos en el repositorio de GitHub, ejecutar los siguientes comandos.

### Paso 1. Descargar los cambios

```bash
git pull
```

Este comando descargará e integrará las actualizaciones disponibles de la rama actual.

**Nota:** Guardar o confirmar los cambios locales antes de actualizar para evitar conflictos.

### Paso 2. Reconstruir los contenedores

```bash
docker compose up --build -d
```

Esto permitirá ejecutar el proyecto con los cambios más recientes.

## 9. Solución de problemas frecuentes

### Docker no responde

**Posible causa:** Docker Desktop no está abierto a su motor no se ha iniciado.

**Solución:**

1. Abrir Docker Desktop.
2. Esperar a que el motor esté funcionando.
3. Ejecutar nuevamente el comando.

### La página web no abre

**Posibles causas:**

- Los contenedores no están funcionando.
- Se está utilizando un puerto incorrecto.
- Existe un error en algún servicio.

**Solución:**

Comprobar el estado de los contenedores:

```bash
docker compose ps
```

Revisar los registros:

```bash
docker compose logs
```

### Error al construir los contenedores

Consultar los registros en tiempo real:

```bash
docker compose logs -f
```

Para dejar de visualizar los registros, presionar:

```text
Ctrl + C
```

### El puerto está ocupado

**Posible causa:** Otra aplicación está utilizando el mismo puerto.

**Solución:**

1. Abrir el archivo 'docker-compose.yml' o 'compose-yaml'.
2. Localizar la configuración de puertos.
3. Modificar el puerto publicado si es necesario.
4. Reiniciar los servicios.

### No se encuentra el archivo de Docker Compose

**Posible causa:** La terminal no está ubicada en la carpeta correcta o falta el archivo de configuración.

**Solución:**

Verificar que la carpeta del proyecto contenga alguno de los siguientes archivos:

- 'docker-compose.yml'
- 'docker-compose.yaml'
- 'compose.yml'
- 'compose.yaml'

Después, ejecutar nuevamente:

```bash
docker compose up --build -d
```

- `docker --version` - Consultar la versión de Docker.
- `docker compose version` - Consultar la versión de Docker Compose.
- `docker compose up --build -d` - Construir e iniciar el proyecto.
- `docker compose up -d` - Iniciar los servicios.
- `docker compose ps` - Consultar el estado de los contenedores.
- `docker compose logs` - Consultar los registros.
- `docker compose logs -f` - Consultar registros en tiempo real.
- `docker compose restart` - Reiniciar los servicios.
- `docker compose restart` - Detener y eliminar los contenedores.
- `git pull` - Descargar las actualizaciones del repositorio.

## 11. Información del proyecto

**Nombre:** Kánikua Itsï

**Objetivo:** Contribuir a la prevenciónd de inundaciones mediante el monitoreo ambiental y la detección temprana de riesgos.

**Tecnologías y componentes del proyecto:**

- Sensores IoT.
- Microcontroladores ESP32.
- Comunicación LoRa.
- Plataforma web.
- Docker.
- Infraestructura verde.

## Repositorio 

El código fuente del proyecto se encuentra disponible en:

https://github.com/Santibanez-22420423/Kanikua-itsi

## Consideraciones importantes

- Mantener Docker Desktop en funcionamiento mientras se utiliza la aplicación.
- Ejecutar los comandos desde la carpeta principal del proyecto.
- Revisar los registros si alguno de los servicios presenta errores.
- Verificar que los puertos estén disponibles.
- Consultar la configuración del proyecto si se requieren variables de entorno.
- No compartir contraseñas, claves de API ni archivos '.env' con información sensible.

**Kánikua Itsï - Tecnología e innovación para la prevención de inundaciones.**
