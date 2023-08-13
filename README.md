# Readme
Este proyecto es un ejemplo de cómo hacer una pequeña aplicación en Ruby on Rails 7.

![Banner](https://estoyprogramando.co/wp-content/uploads/2023/04/Texto-del-parrafo-1-1-1.jpg)

Al ser tan pequeño el alcance de los requerimientos propuestos no hace uso de todas las herramientas y posibilidades que tiene el framework, pero podría extenderse para hacer uso de todas

Suscríbete a mi canal para más contenido de cómo iniciar en el mundo de la programación, además de encontrar contenido específico de programación en Ruby. ![YouTube Channel Subscribers](https://img.shields.io/youtube/channel/subscribers/UCtshJw-uPwhwo-f6450ftQA?label=Suscribirme&style=social) 

Ver video tutorial de este proyecto:


[![¿Cómo HACER un sistema en Ruby on Rails 7? 🔥🔥 - 2023
](https://img.youtube.com/vi/JG0C2rtpCvI/0.jpg)](https://www.youtube.com/watch?v=JG0C2rtpCvI "¿Cómo HACER un sistema en Ruby on Rails 7? 🔥🔥 - 2023
")

# Objetivo
Se requiere un sistema de información que permita la creación de productos y la adición/sustracción de unidades del mismo. Debe permitir la trazabilidad de estos movimientos.

# Requisitos funcionales:
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

# Dependencias (Requisitos de ejecución)
- Git, para clonar el proyecto, instalar según el sistema operativo (o descargar como ZIP)
- Ruby 3.0.2, puede ser instalado con RVM (Mi favorito), Chruby, RBenv, o nativo
- Gema bundler: `gem install bundler`

# Instalación
1. Clonar el proyecto: `git clone https://github.com/damuz91/mi-bodega-rails`
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
- Agregar autenticación (Ver rama de devise)
- Optimizar queries y refactorizar código
- Usar DB postgres
- Montar en Heroku
- Agregar una gráfica de movimientos en el dashboard

# Despliegue
Ver video tutorial para desplegar la aplicación de Ruby on Rails en Ubuntu:
[![Despliegue de Ruby on Rails en Ubuntu, Nginx, Puma en DigitalOcean
](https://img.youtube.com/vi/1jJPGfWQ-rA/0.jpg)](https://www.youtube.com/watch?v=1jJPGfWQ-rA "Despliegue de Ruby on Rails en Ubuntu, Nginx, Puma en DigitalOcean
")

# Más contenido de programación

Te invito a suscribirte en [mi canal de Youtube](https://www.youtube.com/@EstoyProgramando?sub_confirmation=1) donde publico constantemente más contenido gratuito acerca de programación y desarrollo de software.

# Otros recursos:

- ☁️ [Obtén $200 en crédito de DigitalOcean](https://m.do.co/c/d55e17bf64cc)
- [📚 Construye tu propia experiencia - 12 Apps para construir portafolio](https://www.youtube.com/playlist?list=PLKdf6-2FoMDSytloROwdCQ9G2-wXcIzep)
- [📚 Tips para conseguir trabajo como programador: ](https://youtu.be/GXvL6Lkm8o8)

- [📚 Debo estudiar ingeniería de sistemas?](https://youtu.be/bi9QRJ6mjvs)

- [📚 Estudiar programación en el 2023:](https://youtu.be/j0rf2vjGUpA)

- [📚 Cómo aprendí a programar:](https://youtu.be/U_lWz4sEZ2o)

- [📚 Por qué aprender Ruby?](https://youtu.be/Fjs5J2dKKO8)

- [📚 Los programadores deben saber inglés:](https://youtu.be/qhkHvBQRtQE)

- [📚 Curso de fundamentos de programación:](https://youtu.be/rBfmeUZPGK8)

- [📚 Lista de reproducción de conceptos de desarrollo web:](https://www.youtube.com/watch?v=OuZAg9r7VzI&list=PLKdf6-2FoMDR7YxDrObdL8Z8wAyseMXsx)

- [📚 Curso de introducción a la programación](https://youtu.be/9-wkgmd6oCg)

- [👾 Únete a la comunidad en Discord](https://discord.gg/JppBGvx2jZ)
