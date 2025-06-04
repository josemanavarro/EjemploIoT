# EjemploIoT

Este proyecto orquesta una peque\u00f1a plataforma IoT mediante **Docker Compose**. Los contenedores incluidos son:

- **Mosquitto**: broker MQTT para la recepci\u00f3n de medidas.
- **Node-RED**: procesa los mensajes, los guarda en InfluxDB y genera un cuadro de mandos.
- **InfluxDB 2**: base de datos de series temporales.
- **Grafana**: visualiza las m\u00e9tricas almacenadas.
- **Tester**: env\u00eda datos de temperatura falsos al broker.


## Despliegue r\u00e1pido

1. Copia `\.env.example` a `\.env` y revisa las contrase\u00f1as, el token de InfluxDB y las versiones de los contenedores definidas al final del archivo.
2. Ejecuta:

```bash
docker compose up -d
```

Se crear\u00e1n los contenedores y se inicializar\u00e1n con los valores indicados.

## Flujos de Node-RED

Los flujos predefinidos se encuentran en `node-red/data/flows.json` y escuchan el tema `/aula211/temperatura`. Los datos se formatean y se env\u00edan a InfluxDB, adem\u00e1s de representarse en un panel web.

## Dashboards de Grafana

Grafana se configura con el plugin **grafana-lokiexplore-app** (licencia AGPL-3), almacenado en `grafana/data/plugins`. Se incluye la base de datos `grafana.db` con un ejemplo de dashboard.

## Licencias

El c\u00f3digo del proyecto se distribuye bajo la licencia GPL-3 que aparece en `LICENSE`. El plugin de Grafana mencionado est\u00e1 sujeto a la licencia AGPL-3 recogida en `grafana/data/plugins/grafana-lokiexplore-app/LICENSE`.
