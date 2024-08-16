----- EPISODIO 1 -----
SE INSTALA LA BASE DE DATOS DBVENTAS
SE CARGA EL SCRIPT SQL DE LA ESTRUCTURA DE DATOS Y DATOS DUMMIE PARA TRABAJAR CON ELLOS.

----- EPISODIO 2 -----

Se inicializa el proyecto en blanco.
Descargar con NuGet...

Se agrega una solucion de tipo "ASP.Net Core WebAPI con .NET 8 con el nombre SistemaVenta.API
"Establecer como principal" a la capa SistemaVenta.Model

Se agregan un juego de soluciones de "clases de biblioteca .NET" con .NET 8, que son las capas que estaremos usando que son:

*SistemaVenta.BLL: Capa de Negocio
*SistemaVenta.Model: Capa de Modelo
*SistemaVenta.DAL:
*SistemaVenta.DTO:
*SistemaVenta.IOC: Manejo de inyecciones de dependencias
*SistemaVenta.Utility: 
*SistemaVenta.API: Capá de Aplicación

*SistemaVenta.BLL:
- Se agrego la referencia entre proyecto de "SistemaVenta.BLL" a "SistemaVenta.DTO","SistemaVenta.DAL","SistemaVenta.Model","SistemaVenta.Utiliy" atraves de "dependencias".

*SistemaVenta.Model:
- Se agrego la referencia entre proVecto de "SistemaVenta.DAL" a "SistemaVenta.Model" atraves de "dependencias".

*SistemaVenta.IOC:
- Se agrego la referencia entre proyecto de "SistemaVenta.IOC" a "SistemaVenta.BLL","SistemaVenta.DAL" y "SistemaVenta.Utiliy" atraves de "dependencias".

*SistemaVenta.Utility:
- Se agrego la referencia entre proyecto de "SistemaVenta.Utility" a "SistemaVenta.DTO" y "SistemaVenta.Model"  atraves de "dependencias".

*SistemaVenta.API:
- Se agrego la referencia entre proyecto de "SistemaVenta.API" a "SistemaVenta.BLL","SistemaVenta.DTO" y "SistemaVenta.IOC"  atraves de "dependencias".

Se elimina la clase "DbventaContext.cs" ubicada dentro de >> "SistemaVenta.Model"