La siguiente lista muestra los comandos que se usaron para generar el Scaffold de los modelos

Crear el controlador de home, en donde estará el Dashboard:
- rails generate controller Home dashboard

Crear el modelo de producto
- rails generate scaffold Product name:string reference:string description:text

Crear el modelo de movimiento
- rails g model Movement movement_type:integer quantity:integer comment:text product:references

Para imprimir las rutas
- rails routes

Para correr las migraciones (Es decir, hacer las modificaciones de la base de datos)
- rails db:migrate

En caso de equivocarse con una migración, se puede retroceder 1 paso, con el siguiente comando, es decir se pueden retroceder varios pasos ejecutándolo varias veces. En la salida en texto ode la consola dice que paso exactamente se regresó.
- rails db:rollback

Agregar las gemas adicionales para exportar a excel
```
gem 'rubyzip', '>= 1.2.1'
gem 'axlsx'
gem 'axlsx_rails'
```

Para instalar las gemas nuevas cuando se agregan en el archivo Gemfile
- bundle install

