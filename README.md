# Readme
Este proyecto es un ejemplo de cómo hacer una pequeña aplicación en Ruby on Rails 7.

Al ser tan pequeño el alcance de los requerimientos propuestos no hace uso de todas las herramientas y posibilidades que tiene el framework, pero podría extenderse para hacer uso de todas

# Objetivo
Se requiere un sistema de información que permita la creación de productos y la adición/sustracción de unidades del mismo. Debe permitir la trazabilidad de estos movimientos.

# Requerimientos funcionales:
- Debe permitir la creación de productos y sus cantidades
- Debe permitir la sustracción de cantidades de productos
- Debe permitir llevar el histórico de ingresos y egresos
- Debe permitir visualizar el listado de los productos
- Debe permitir visualizar el detalle del producto junto a su histórico de movimiento
- Debe permitir descargar en excel el listado de productos
- Debe permitir descargar en excel el listado de movimientos de un producto
- Debe mostrar en la pantalla principal los productos con más cantidades y los últimos movimientos

# Requisitos no funcionales
- Debe ser accedido desde computador o celular
- Los datos del sistema deben ser iguales desde cualquier lugar de consulta
- Debe ser compatible en cualquiera navegador web moderno
- El sistema debe responder a las solicitudes del usuario en 'pocos' segundos
- La visualización debe ser 'Responsive' para ser visualizada en diferentes dispositivos

# Dependencias
- Git, para clonar el proyecto, instalar según el sistema operativo (o descargar como ZIP)
- Ruby 3.0.2, puede ser instalado con RVM (Mi favorito), Chruby, RBenv, o nativo
- Gema bundler: `gem install bundler`

# Instalación
1. Clonar el proyecto: `git clone https://github.com/damuz91/mi-bodega`
2. Instalar las gemas `bundle install`
3. Crear la base de datos: `rails db:create db:migrate`
4. [Opcional] Popular la base de datos con los datos de pruena: `rails db:seed`
5. Prender el servidor de prueba `rails server`
6. Abrir el navegador en `localhost:3000`
7. [Opcional] Para borrar la db en caso de querer volver a empezar `rails db:drop`

# Frontend
Para facilitar el entendimiento de la programación en Ruby y en Rails propongo una plantilla ya creada y verificada basada en bootstrap, la cual es de uso libre. En este proyecto solo la instalo y la utilizo para darle una apariencia visual usable y amigable.

https://startbootstrap.com/theme/sb-admin-2

# Base de datos
Se utiliza una instancia de SQlite que se encuentra en el sistema de archivos del proyecto, en la carpeta db. Se debe tener en cuenta las limitaciones que tiene esta base de datos, y se propone así por simplicididad. Sin embargo usar un motor de base de datos real sería sencillo una vez esté disponible e instalado.

Una mejora futura puede ser pasar la DB a Postgresql

# Mejoras futuras
- Agregar autenticación
- Optimizar queries y refactorizar código
- Usar DB postgres
- Montar en Heroku
- Agregar una gráfica de movimientos en el dashboard