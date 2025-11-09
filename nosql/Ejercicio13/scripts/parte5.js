use lavanderia

//clientes
db.clientes.updateMany(
    {Grupo:"A"},
    {
        $set:{
            origen:"UYU"
        }
    }
)
db.clientes.updateMany(
    {Grupo:"B"},
    {
        $set:{
            origen:"BRA"
        }
    }
)
db.clientes.updateMany(
    {Grupo:"C"},
    {
        $set:{
            origen:"ARG"
        }
    }
)
db.clientes.updateMany(
    {Grupo:"D"},
    {
        $set:{
            origen:"COL"
        }
    }
)
db.clientes.deleteMany(
    {Grupo:"E"}
)

//Provedores 
db.proveedores.updateOne(
    {_id: ObjectId('69111150c154547bc4ce5f51')},
    {$set: {origen: "ARG"}}
)
db.proveedores.updateOne(
    {_id: ObjectId('69111150c154547bc4ce5f52')},
    {$set: {origen: "ARG"}}
)
db.proveedores.updateOne(
    {_id: ObjectId('69111150c154547bc4ce5f53')},
    {$set: {origen: "BRA"}}
)
db.proveedores.updateOne(
    {_id: ObjectId('69111150c154547bc4ce5f54')},
    {$set: {origen: "BRA"}}
)
db.proveedores.updateOne(
    {_id: ObjectId('69111150c154547bc4ce5f55')},
    {$set: {origen: "BRA"}}
)


//Maquinas 
db.maquinas.updateOne(
    {_id: ObjectId('6911114fc154547bc4ce5f47')},
    {$set: {origen: "ARG"}}
)

db.maquinas.updateOne(
    {_id: ObjectId('6911114fc154547bc4ce5f48')},
    {$set: {origen: "ARG"}}
)

db.maquinas.updateOne(
    {_id: ObjectId('6911114fc154547bc4ce5f49')},
    {$set: {origen: "ARG"}}
)
db.maquinas.updateOne(
    {_id: ObjectId('6911114fc154547bc4ce5f4a')},
    {$set: {origen: "BRA"}}
)

db.maquinas.updateOne(
    {_id: ObjectId('6911114fc154547bc4ce5f4b')},
    {$set: {origen: "BRA"}}
)

