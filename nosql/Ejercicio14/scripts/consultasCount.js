
use lavanderia

// Consulta A 

db.clientes.find({ 
    $or:
    [
        {Departamento:"Soriano"},
        {Departamento:"Rivera"}
    ]
}).count()

//Consulta b 
 
db.clientes.find({ 
    $or:
    [
        {Departamento:"Soriano"},
        {Rol:"Docente"}
    ]
}).count()

//Consulta C 

db.clientes.find(
    {Edad: {$gt:25, $lt:65}}
).count()

//Consulta D 

db.clientes.find(
    {Edad:{$lt:25}}
).count()

//Consulta E 
db.clientes.find(
    {Edad:{$gt:80}}
).count()

//Consulta F 

db.clientes.find({
    $or: 
    [
        {Hobbies: "Leer"},
        {Hobbies: "Cantar"}
    ]
}).count()

//Consulta G 

db.clientes.find(
    {
        Hobbies:["Leer", "Correr"]
    }
).count()

// Consulta H 

db.clientes.find(
    {
        Hobbies: 
        {
            $all:["Correr"]
        }
    }
).count()


