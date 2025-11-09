use lavanderia
db.clientes.updateMany(
    {},
    {
        $set:{
            ultima_compra: new Date(),
            origen: ""
        }
    }
)

db.maquinas.updateMany(
    {},
    {
        $set:{
            origen: "UYU"
        }
    }
)

db.proveedores.updateMany(
    {},
    {
        $set:{
            email:"",
            origen: "UYU"
        }
    }
)
