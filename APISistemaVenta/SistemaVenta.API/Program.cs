using SistemaVenta.IOC; //Hacemos el llamado de esta clase para poder hacer uso de nuestro metodo de extenci�n "Inyectar dependencias () "
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.InyectarDependencias(); //Metodo de Extensi�n: Es una forma de agregar nuevas funcionalidades a tipos existentes sin modificar su definici�n original,

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();

app.MapControllers();

app.Run();
