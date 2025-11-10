use lavanderia

// Consulta A 

db.clientes.find({ 
    $or:
    [
        {Departamento:"Soriano"},
        {Departamento:"Rivera"}
    ]
})

//Consulta b 
 
db.clientes.find({ 
    $or:
    [
        {Departamento:"Soriano"},
        {Rol:"Docente"}
    ]
})

//Consulta C 

db.clientes.find(
    {Edad: {$gt:25, $lt:65}}
)

//Consulta D 

db.clientes.find(
    {Edad:{$lt:25}}
)

//Consulta E 
db.clientes.find(
    {Edad:{$gt:80}}
)

//Consulta F 

db.clientes.find({
    $or: 
    [
        {Hobbies: "Leer"},
        {Hobbies: "Cantar"}
    ]
})

//Consulta G 

db.clientes.find(
    {
        Hobbies:["Leer", "Correr"]
    }
)

// Consulta H 

db.clientes.find(
    {
        Hobbies: 
        {
            $all:["Correr"]
        }
    }
)


