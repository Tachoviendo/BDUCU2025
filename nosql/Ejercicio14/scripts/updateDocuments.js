use lavanderia

//Grupos

db.clientes.updateMany(
    {Grupo: "A"},
    {
        $set:{
            Departamento:"Salto",
            Edad:82,
            Rol: "Docente",
            Hobbies: ["Leer", "Correr"]
        }
    }
)

db.clientes.updateMany(
    {Grupo: "B"},
    {
        $set:{
            Departamento:"Rivera",
            Edad:23,
            Rol: "Estudiante",
            Hobbies: ["Correr"]
        }
    }
)

db.clientes.updateMany(
    {Grupo: "C"},
    {
        $set:{
            Departamento:"Paysandu",
            Edad:47,
            Rol: "Adscripto",
            Hobbies: ["Leer", "Correr","Pescar", "Viajar"]
        }
    }
)

db.clientes.updateMany(
    {Grupo: "D"},
    {
        $set:{
            Departamento:"Soriano",
            Edad:60,
            Rol: "Funcionario",
            Hobbies: ["Pescar", "Viajar", "Cantar"]
        }
    }
)
