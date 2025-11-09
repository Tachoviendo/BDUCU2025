use ejercicio125

//actualizo el formato de vehiculos de forma masiva ya que supongo que todos los autos en aquiler cuentan con telepeaje.
db.vehiculos.updateMany(
    {},
    {
        $set: {telepeaje: true},
        $unset: {sale_pais: ""}
    }
)

//En cuanto a los clientes, hay que agregar su direccion, telefonos y emails por separado


db.clientes.updateOne(
  { _id: "57460809" },
  {
    $set: {
      direccion: {
        calle_nro: "Av. Artigas 324",
        ciudad: "Bella Unión",
        pais: "Uruguay"
      },
      telefonos: ["098431583"],
      email: "ignacio.3249@email.com"
    }
  }
)

db.clientes.updateOne(
  { _id: "48392015" },
  {
    $set: {
      direccion: {
        calle_nro: "18 de Julio 5678",
        ciudad: "Montevideo",
        pais: "Uruguay"
      },
      telefonos: ["098765432"],
      email: "maria.rodriguez@email.com"
    }
  }
)

db.clientes.updateOne(
  { _id: "52134678" },
  {
    $set: {
      direccion: {
        calle_nro: "Av. Corrientes 9012",
        ciudad: "Buenos Aires",
        pais: "Argentina"
      },
      telefonos: ["+5491123456789"],
      email: "carlos.perez@email.com"
    }
  }
)

db.clientes.updateOne(
  { _id: "61028457" },
  {
    $set: {
      direccion: {
        calle_nro: "Uruguay 3456",
        ciudad: "Salto",
        pais: "Uruguay"
      },
      telefonos: ["099887766", "47331234"],
      email: "ana.fernandez@email.com"
    }
  }
)

db.clientes.updateOne(
  { _id: "45673920" },
  {
    $set: {
      direccion: {
        calle_nro: "Gorlero 7890",
        ciudad: "Punta del Este",
        pais: "Uruguay"
      },
      telefonos: ["094556677"],
      email: "luis.garcia@email.com"
    }
  }
)


