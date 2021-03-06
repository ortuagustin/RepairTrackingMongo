# RepairTrackingMongo
## Base de Datos 2

El presente trabajo consiste en una adaptacion del proyecto [RepairTracking](https://github.com/ortuagustin/RepairTracking) para que funcione con una base de datos NoSQL, en particular, [MongoDB](https://www.mongodb.com)

-----

El proyecto consiste en una aplicación web para gestionar reparaciones de diferentes tipos de artefactos/máquinas. La aplicación se utiliza a través de dos roles: Reparador (el cual posee una cuenta registrada) y Cliente.

Un reparador, una vez logueado, tendrá la posibilidad de crear una nueva reparación la cual estará asociada a un cliente y a un artefacto. Al crearse, la aplicación genera un código único asociado a la misma.

El cliente podrá consultar el estado de su reparación en base al código único, teniendo la posibilidad de estar informado sobre las diferentes revisiones realizadas al artefacto y cuándo estará listo para ser retirado.

El reparador podrá administrar tanto a los clientes como a los artefactos, incluyendo sus piezas y tareas de reparación a realizar sobre el mismo.

### Alumnos

* Ortu, Agustín
* Camele, Genaro

# Corriendo la aplicacón

La aplicación se puede correr como una aplicacion Ruby on Rails cualquiera, o bien, usando docker, lo cual simplifica la instalación y configuracion de la infraestructura necesaria

## Docker

> Es necesario tener docker y docker-compose instalados en el sistema

1. Clonar el repositorio:

```bash
  git clone https://github.com/ortuagustin/RepairTrackingMongo.git
  cd RepairTrackingMongo
```

2. Construir y ejecutar el contenedor:

```bash
  docker-compose up
```

3. Inicializar la base de datos con datos de prueba (ejecutar en otra terminal):

```bash
  docker-compose exec web rails db:setup
```

4. Ejecución: Correr el servidor: `rails s` y acceder a la [aplicación](http://localhost:3000). Ingresar con el usuario `test@test.com` y password `1234`

5. Para finalizar:

```bash
  docker-compose down
```

## Rails tradicional

### Preparando el ambiente:

#### Ambiente Ruby

* El proyecto se dessarrolló usando [**Ruby**](https://www.ruby-lang.org) 2.5.3p105 (2018-10-18 revision 65156)
* Se utilizó [**Ruby on Rails**](https://rubyonrails.org) 5.2.1 como framework de desarrollo
* Es necesario tener instalado [**NodeJS**](https://nodejs.org). Se utilizó el gestor de paquetes [**Yarn**](https://yarnpkg.com)
* Se utilizó [VueJS](https://vuejs.org) como framework de desarrollo para el frontend
* La base de datos utiliazda es [**MongoDB**](https://www.mongodb.com)
* **Dependencias**: Como en la mayoria de los proyectos Rails, son gestionadas usando [Bundler](https://github.com/bundler/bundler). Las mas destacadas son:
  - [Rails](https://github.com/rails/rails)
  - [Mongoid](https://docs.mongodb.com/mongoid/current/)
  - [Bootstrap 4.1](https://getbootstrap.com)
  - [VueJS](https://vuejs.org)
  - [Devise](https://github.com/plataformatec/devise)
  - [Validates](https://github.com/kaize/validates)
  - [Faker](https://github.com/stympy/faker)
  - [Kaminari](https://github.com/kaminari/kaminari)
  - [FontAwesome](https://fontawesome.com/)
* Se debe contar con una instalación de MongoDB para que la aplicación funcione

1. Clonar el repositorio:

```bash
  git clone https://github.com/ortuagustin/RepairTrackingMongo.git
  cd RepairTrackingMongo
```

2. Ejecutar bundler para instalar las dependencias de Ruby:

```bash
  bundle
```

3. Ejecutar yarn para instalar las dependencias de JavaScript:

```bash
  yarn install
```

4. Es posible que se necesiten dependencias adicionales para las bases de datos; en sistemas Linux, ejecutar:

  ```bash
    apt install sqlite3
    apt install libsqlite3-dev
  ```

5. Configurar la base de datos:
  - Para crear la BD, ejecutar: `rails db:migrate`
  - Para inicializar la BD con los *seeds*, es decir, un set de datos inicial, ejecutar `rails db:seed`

6. Se utiliza [Webpacker](https://github.com/rails/webpacker) para los assets utilizados en el frontend; correr en el directorio raiz del proyecto:
  - Desarrollo

```bash
  ./bin/webpack --watch --colors --progress
```
  - Producción

```bash
  ./bin/webpack
```

7. Ejecución: Correr el servidor: `rails s` y acceder a la [aplicación](http://localhost:3000)

8. Para correr los tests: `rails t`
