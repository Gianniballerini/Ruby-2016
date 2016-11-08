# ¿Qué diferencia hay entre el uso de include y extend a la hora de incorporar un módulo en una clase?
# 1. Si quisieras usar un módulo para agregar métodos de instancia a una clase, 
# 	¿qué forma usarías a la hora de incluirlo en la clase?
# 2. Si en cambio quisieras usar un módulo para agregar métodos de clase, 
# 	¿qué forma usarías a la hora de incluir el módulo en la clase?

El include en Ruby agrega una referencia al módulo que agregará nuevos métodos a nuestra clase
Si varias clases incluyen el mismo módulo, todas tendran referencias al mismo
Si modificamos el módulo durante la ejecución del programa, 
todas las clases que incluían el módulo tomarán los cambios automáticamente.

extend hace lo mismo, pero en vez de agregar los metodos como "metodos de instancia", los agrega como "metodos de Clase"