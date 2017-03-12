# 1. Crear imagen Alarmas

```bash
$ cd alarmas-app
$ mvn clean package docker:build
```

# 2. Arranque
 
```bash
$ docker-compose -f mysql.compose up -d
$ docker-compose -f alarmas.compose up -d
```

# 3. Carga datos Mysql

```bash
$ mysql -uroot -proot -h127.0.0.1 -P3306 salud < mysql-dumps/alarmas.dump.v8.sql
```

# 4. Exportacion Mysql a CSV

Ejecutar todas las consultas del fichero `mysql-dumps/migracion.sql` en el orden que aparecen 

# 5. Carga exportación

Abrir navegador y acceder a la consola de Neo4j usando la URL: http://localhost:7474/

Ejecutar el contenido de los ficheros `cyp` numerados del directorio `cypher` en orden, empezando por `1_limpiar.cyp` y terminando por `21_liquidacion_prestacion.cyp`

# Verificar aplicación alarmas

```bash
$ docker-compose -f alarmas.compose logs alarmas
```
