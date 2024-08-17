# EPISODIO 1

- **Se instala la base de datos DBVentas.**
- **Se carga el script SQL de la estructura de datos y datos dummie para trabajar con ellos.**

# EPISODIO 2

1. **Se inicializa el proyecto en blanco.**
2. **Se descarga con NuGet...**
3. **Se agrega una solución de tipo** `ASP.Net Core WebAPI` **con .NET 8 con el nombre** `SistemaVenta.API`.
 

4. **Se agregan un conjunto de soluciones de "clases de biblioteca .NET" con .NET 8, que son las capas que estaremos usando:**
   - **SistemaVenta.BLL**: Capa de Negocio
   - **SistemaVenta.Model**: Capa de Modelo
   - **SistemaVenta.DAL**
   - **SistemaVenta.DTO**
   - **SistemaVenta.IOC**: Manejo de inyecciones de dependencias
   - **SistemaVenta.Utility**
   - **SistemaVenta.API**: Capa de Aplicación

4.1 **Se estable como proyecto de inicio la capa `SistemaVenta.Model`.

4.2 Copia y pega este codigo: "Scaffold-DbContext "Server=(local); DataBase=dbventa; Trusted_Connection=True; TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer" en la terminal de Nuget

5. **Referencias agregadas entre proyectos:**
   - **SistemaVenta.BLL:**
     - Se agregó la referencia entre el proyecto `SistemaVenta.BLL` a `SistemaVenta.DTO`, `SistemaVenta.DAL`, `SistemaVenta.Model` y `SistemaVenta.Utility` a través de dependencias.
   
   - **SistemaVenta.Model:**
     - Se agregó la referencia entre el proyecto `SistemaVenta.DAL` a `SistemaVenta.Model` a través de dependencias.
   
   - **SistemaVenta.IOC:**
     - Se agregó la referencia entre el proyecto `SistemaVenta.IOC` a `SistemaVenta.BLL`, `SistemaVenta.DAL` y `SistemaVenta.Utility` a través de dependencias.
   
   - **SistemaVenta.Utility:**
     - Se agregó la referencia entre el proyecto `SistemaVenta.Utility` a `SistemaVenta.DTO` y `SistemaVenta.Model` a través de dependencias.
   
   - **SistemaVenta.API:**
     - Se agregó la referencia entre el proyecto `SistemaVenta.API` a `SistemaVenta.BLL`, `SistemaVenta.DTO` y `SistemaVenta.IOC` a través de dependencias.

6. **Se elimina la clase** `DbventaContext.cs` **ubicada dentro de** `SistemaVenta.Model`.

 **Establecer como proyecto de inicio a SistemaVenta.API