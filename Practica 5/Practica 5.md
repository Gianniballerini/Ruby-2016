# TTPS opción Ruby

# Práctica 5

En esta práctica incorporaremos conceptos del framework Ruby on Rails, desarrollando las posibilidades que nos ofrece
para facilitar el desarrollo ágil de aplicaciones web.

## Rails

1. El framework está compuesto de diferentes librerías:
   * ActionMailer
   * ActionPack
   * ActionView
   * ActiveJob
   * ActiveModel
   * ActiveRecord
   * ActiveSupport
   * ActionCable

   Para cada una de estas librerías, analizá y respondé las siguientes preguntas:

   1. ¿Qué funcion principal cumple?
   2. ¿En qué parte(s) del patrón Model-View-Controller (MVC) encajaría?
2. Investigá cómo se crea una aplicación Rails nueva y enumerá los pasos básicos para tener la aplicación funcionando con una
   base de datos SQLite.
      
      Una aplicacion Rails nueva, se crea con el comando `new rails nombre_de_la_app opciones`.      
      ruby-SQLite3 es una interfaz para Ruby. Este modulo permite a los programas en ruby tener una interfaz con el motor de base de datos SQLite3.
      Con tal de tener instalado SQLite3 rails ya esta preparado para correr con la BD SQLite.


3. Siguiendo los pasos que enumeraste en el punto anterior, creá una nueva aplicación Rails llamada `practica_cinco` en la cual vas a realizar las pruebas para los ejercicios de esta práctica.

      Listo. 

4. ¿Qué es un **ambiente** (`environment`) en una aplicación Rails? ¿Qué sentido considerás que tiene usar diferentes   ambientes en tu aplicación? ¿Cuál es el ambiente por defecto?

      Un ambiente es el entorno en el que uno desarrolla en la aplicacion. Existen Development, Production, Testing.
      El ambiente por defecto es development. Y cada uno tiene opciones por defecto que convienen tener por separado.
      Development no cachea los Templates. Testing y Production si.
      En development se renderizan la mayoria de los errores. En produccion se logean en la consola.

5. Sobre la configuración de Rails:
   1. ¿De qué forma podés especificar parámetros de configuración del framework en una app Rails?

      *    con el comando `config.*insert-setting-name-here*`

   2. ¿Cuáles son los archivos principales? Intentá relacionar este concepto con los ambientes que antes viste.

      *  El archivo de configuracion `config/application.rb` y los archivos especificos de configuracion del ambiente (como config/enviroments/production.rb) permiten especificar varias configuraciones que se extienda a todos los componentes.

   3. Modificá el `locale` por defecto de tu aplicación para que sea español.

      *  Terminar de hacerlo

   4. Modificá la zona horaria de tu aplicación para que sea la de la Argentina.

      * lo mismo que lo de arriba

6. Sobre los *initializers*:
   1. ¿Qué son y para qué se utilizan?

      Rails tiene muchos initializers por defecto. Estos se ejecutan al levantar rails. 
      Estos se definen con el metodo initializers de la clase Rails::Railtie
      Se utilizar para configurar cosas justo despues de cargar el framework y todas las gemas.
      El metodo initializer lleva 3 argumentos:
         *nombre del initializer
         *options (en un hash)
         *un bloque

      Estos se corren en el orden el que se definieron con excepcion a los que tienen el metodo :before o :after.

     ` initializer "action_controller.set_helpers_path" do |app|
         ActionController::Helpers.helpers_path = app.helpers_paths
      end `

   2. ¿En qué momento de la vida de la aplicación se ejecutan?

      Los inicializer se ejecutan despues de que se carga el framework y las gemas. Y a la vez se puede configurar el orden de ejecucion de acuerdo al nombre de los archivos de inicializacion. ej: 01_critical.rb, 02_not-so-critical.rb

   3. Si tu app está corriendo y modificás algún initializer, ¿los cambios se reflejan automáticamente? ¿Por qué?

      No. Porque para que los cambios de los initializers sean reflejados, hay que reiniciar el server.
      Todos los archivos dentro de la carpeta initializer dicen:
         *be sure to restart your server when you modify this file*

   4. Creá un initializer en tu aplicación que imprima en pantalla el string `"Booting practica_cinco"`.  
      ¿En qué momento se visualiza este mensaje?

         Se visualiza en el momento que se ejecuta. 
         Que seria en el orden en el que estan los archivos dentro de la carpeta initializer.
         Al hacer ` rails s ` (que inicia el servidor) se ejecutan todos los initializers en el orden que estan en la carpeta.
         Por lo que si tu initializer tiene un nombre que empieze con *z*, probablemente se ejecute ultimo. justo antes de bootear el server.

7. Sobre los *generators*:
   1. ¿Qué son? ¿Qué beneficios imaginás que trae su uso?

      Un *generator* es algo que magicamente crea codigo. Por ejemplo el generator scaffold que nos genera el CRUD de nuestros objetos de la BD. (algo asi)
      El beneficio principal es que nos ahorra muchisimo tiempo escribiendo codigo.
      ` rails new ` es en si mismo un generator. Que (valga la rebunznacia) genera todo el codigo necesario de Ruby

   2. ¿Con qué comando podés consultar todos los generators disponibles en tu app Rails?

      ` rails generate ` nos lista todos los comandos posibles algo como

      ```sh

                     Running via Spring preloader in process 20809
            Usage: rails generate GENERATOR [args] [options]

            General options:
              -h, [--help]     # Print generator's options and usage
              -p, [--pretend]  # Run but do not make any changes
              -f, [--force]    # Overwrite files that already exist
              -s, [--skip]     # Skip files that already exist
              -q, [--quiet]    # Suppress status output

            Please choose a generator below.

            Rails:
              assets
              channel
              controller
              generator
              helper
              integration_test
              jbuilder
              job
              mailer
              migration
              model
              resource
              scaffold
              scaffold_controller
              task

            Coffee:
              coffee:assets

            Js:
              js:assets

            TestUnit:
              test_unit:generator
              test_unit:plugin


      ```


   3. Utilizando el generator adecuado, creá un controller llamado `PoliteController` que tenga una acción `salute` que
      responda con un saludo aleatorio de entre un arreglo de 5 diferentes, como por ejemplo *"Good day sir/ma'am."*.

      ```sh

         rails generate controller PoliteController salute

            create  app/controllers/polite_controller_controller.rb
             route  get 'polite_controller/salute'
            invoke  erb
            create    app/views/polite_controller
            create    app/views/polite_controller/salute.html.erb
            invoke  test_unit
            create    test/controllers/polite_controller_controller_test.rb
            invoke  helper
            create    app/helpers/polite_controller_helper.rb
            invoke    test_unit
            invoke  assets
            invoke    coffee
            create      app/assets/javascripts/polite_controller.coffee
            invoke    scss
            create      app/assets/stylesheets/polite_controller.scss

      ```

   Solo con ese comando nos crea todo lo necesario para que el controller funcione. Simplemente hay qeu modificar el comportamiento que queremos que tenga el controller en *app/controllers/polite_controllers.rb*
   Por ejemplo.

      ```sh
            class PoliteControllerController < ApplicationController
              def salute
                  arr = ["Good day sir/ma'am.","Good day Neko","Aloha","こんにちわ","holis"]
                  @mensaje = arr.sample
              end
            end
      ```

   Y despues modificar la view que se auto-genero (tambien con el comandito magico) en *app/views/polite_controller/salute.html.erb*
   por ejemplo nosotros pusimos:

   ```sh
      <h1>Saludo Random</h1>
      <p><%= @message %></p>
   ```
   Hacemos andar el server. Y probamos en la direccion: * http://localhost:3000/polite_controller/salute * y ** MAGIA **


8. Sobre *routing*:
   1. ¿Dónde se definen las rutas de la app Rails?
   2. ¿De qué formas se pueden definir las rutas?
   3. ¿Qué ruta(s) agregó el generator que usaste antes?
   4. ¿Con qué comando podés consultar todas las rutas definidas en tu app Rails?

## ActiveSupport (AS)

1. ¿De qué forma extiende AS las clases básicas de Ruby para incorporar nuevos métodos?
2. Investigá qué métodos agrega AS a las siguientes clases:
   1. `String`
   2. `Array`
   3. `Hash`
   4. `Date`
   5. `Numeric`
3. ¿Qué hacen y en qué clase define AS los siguientes métodos?
   1. `blank?`
   2. `present?`
   3. `presence`
   4. `try`
   5. `in?`
   6. `alias_method_chain`
   7. `delegate`
   8. `pluralize`
   9. `singularize`
   10. `camelize`
   11. `underscore`
   12. `classify`
   13. `constantize`
   14. `humanize`
   15. `sum`
4. ¿De qué manera se le puede *enseñar* a AS cómo pasar de singular a plural (o viceversa) los sustantivos que usamos
   en nuestro código?

   > Tip: Mirá el archivo config/initializers/inflections.rb

5. Modificá la configuración de la aplicación Rails para que *aprenda* a pluralizar correctamente en español todas las
   palabras que terminen en `l`, `n` y `r`.

   > Tip: el uso de expresiones regulares simples ayuda. :)

## ActiveRecord (AR)

1. ¿Cómo se define un modelo con ActiveRecord? ¿Qué requisitos tienen que cumplir las clases para utilizar la lógica de
   abstracción del acceso a la base de datos que esta librería ofrece?
2. ¿De qué forma *sabe* ActiveRecord qué campos tiene un modelo?
3. ¿Qué metodos (*getters* y *setters*) genera AR para los campos escalares básicos (`integer`, `string`, `text`, `boolean`, `float`)?
4. ¿Qué convención define AR para inferir los nombres de las tablas a partir de las clases Ruby? Citá ejemplos.
5. Sobre las migraciones de AR:
   1. ¿Qué son y para qué sirven?
   2. ¿Cómo se generan?
   3. ¿Dónde se guardan en el proyecto?
   4. ¿Qué organización tienen sus nombres de archivo?
   5. Generá una migración que cree la tabla `offices` con los siguientes atributos:
      * `name`: `string` de `255` caracteres, no puede ser nulo.
      * `phone_number`: `string` de `30` caracteres, no puede ser nulo.
      * `address`: `text`.
      * `available`: `boolean`, por defecto `false`, no puede ser nulo.
5. Creá el modelo `Office` para la tabla `offices` que creaste antes, e implementale el método `#to_s`.
6. Utilizando migraciones, creá la tabla y el modelo para la clase `Employee`, con la siguiente estructura:
   * `name`: `string` de `150` caracteres, no puede ser nulo.
   * `e_number`: `integer`, no puede ser nulo, debe ser único.
   * `office_id`: `integer`, foreign key hacia `offices`.
7. Agregá una asociación entre `Employee` y `Office` acorde a la columna `office_id` que posee la tabla `employees`.
   1. ¿Qué tipo de asociación declaraste en la clase `Employee`?
   2. ¿Y en la clase `Office`?
   3. ¿Qué métodos generó AR en el modelo a partir de esto?
   4. Modificá el mapeo de rutas de tu aplicación Rails para que al acceder a `/` se vaya al controller definido antes (`polite#salute`).
8. Sobre *scopes*:
   1. ¿Qué son los scopes de AR? ¿Para qué los utilizarías?
   2. Investigá qué diferencia principal existe entre un método estático y un scope.
   3. Agregá los siguientes scopes al modelo `Employee`:
      * `vacant`: Filtra los empleados para quedarse únicamente con aquellos que no tengan una oficina asignada (*asociada*).
      * `occupied`: Complemento del anterior, devuelve los empleados que sí tengan una oficina asignada.
   4. Agregá este scope al modelo `Office`:
      * `empty`: Devuelve las oficinas que están disponibles (`available = true`) que no tienen empleados asignados.
9. Sobre *scaffold controllers*:
   1. ¿Qué son? ¿Qué operaciones proveen sobre un modelo?
   2. ¿Con qué comando se generan?
   3. Utilizando el generator anterior, generá un controlador de scaffold para el modelo `Office` y otro para el modelo
      `Employee`.
   4. ¿Qué rutas agregó este generator?
   5. Analizá el código que se te generó para los controllers y para las vistas, y luego modificalo para que no permita
      el borrado de ninguno de los elementos. ¿Qué cambios debés hacer para que las vistas no muestren la opción, el
      controller no tenga la acción `destroy` y las rutas de borrado dejen de existir en la aplicación?

## ActiveModel (AM)

1. ¿Qué son los validadores de AM?
2. Agregá a los modelos `Office` y `Employee` las validaciones necesarias para hacer que sus atributos cumplan las
   restricciones definidas para las columnas de la tabla que cada uno representa.
3. Validadores personalizados:
    1. ¿Cómo podés definir uno para tus modelos AR?
    2. Implementá un validador que chequee que un string sea un número telefónico con un formato válido para la
       Argentina.
    3. Agregá el validador que definiste en el punto anterior a tu modelo `Office` para validar el campo `phone_number`.

## Internacionalización (i18n) y localización (l10n)

1. ¿A qué hacen referencia estos conceptos?
2. Investigá qué dos metodos provee la clase `I18n` para realizar la traducción (i18n) y la localización (l10n).
3. Modificá el controller `PoliteController` que creaste antes para que utilice traducciones al imprimir el mensaje
   de saludo.
4. Modificá los controllers de scaffold que generaste para que utilicen i18n, tanto en las vistas como en los mensajes
   flash del controller.

   > Tip: Investigá qué helper provee Rails en las vistas para las traducciones.

## Referencias

* Ruby on Rails - http://rubyonrails.org
  * [APIs](http://api.rubyonrails.org/)
  * [Guías](http://guides.rubyonrails.org/)
  * [Guía básica de ActiveRecord](http://guides.rubyonrails.org/active_record_basics.html)
  * [Extensiones de ActiveSupport](http://guides.rubyonrails.org/active_support_core_extensions.html)
  * [Rails for Zombies](http://railsforzombies.org/) (Un poco desactualizado, pero vale la pena mencionarlo)