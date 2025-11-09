use ejercicio125

// Ingreso primero los vehículos
db.vehiculos.insertMany([
    {
        _id: "GBA 2040", 
        marca: "Toyota", 
        modelo: "Corolla", 
        color: "Gris", 
        año: 2010, 
        plazas: 4, 
        tipo: "básico", 
        caja: "manual", 
        disponible: true, 
        precio_dia: 500, 
        sale_pais: false
    },
    {
        _id: "SCL 3456", 
        marca: "Ford", 
        modelo: "Fiesta", 
        color: "Rojo", 
        año: 2015, 
        plazas: 5, 
        tipo: "utilitario", 
        caja: "manual", 
        disponible: true, 
        precio_dia: 650, 
        sale_pais: false
    },
    {
        _id: "MVD 7890", 
        marca: "BMW", 
        modelo: "Serie 3", 
        color: "Negro", 
        año: 2020, 
        plazas: 5, 
        tipo: "premium", 
        caja: "automática", 
        disponible: false, 
        precio_dia: 1500, 
        sale_pais: true
    },
    {
        _id: "BUE 1122", 
        marca: "Mercedes-Benz", 
        modelo: "Clase E", 
        color: "Blanco", 
        año: 2022, 
        plazas: 5, 
        tipo: "ejecutivo", 
        caja: "automática", 
        disponible: true, 
        precio_dia: 2000, 
        sale_pais: true
    },
    {
        _id: "CBA 5544", 
        marca: "Volkswagen", 
        modelo: "Gol", 
        color: "Azul", 
        año: 2018, 
        plazas: 4, 
        tipo: "básico", 
        caja: "manual", 
        disponible: true, 
        precio_dia: 550, 
        sale_pais: false
    }
])

// Luego ingreso los clientes  
db.clientes.insertMany([
    {
        _id: "57460809", 
        nombre: "Ignacio", 
        apellido: "Silva", 
        fdn: "14-05-2005", 
        licencia: "1234567-A", 
        origen: {
            ciudad: "Bella Unión", 
            pais: "Uruguay"
        }, 
        categorias: ["G2"], 
        fecha_vencimiento: "15-10-2027"
    },
    {
        _id: "48392015", 
        nombre: "María", 
        apellido: "Rodríguez", 
        fdn: "23-08-1995", 
        licencia: "9876543-B", 
        origen: {
            ciudad: "Montevideo", 
            pais: "Uruguay"
        }, 
        categorias: ["G2", "A"], 
        fecha_vencimiento: "30-06-2026"
    },
    {
        _id: "52134678", 
        nombre: "Carlos", 
        apellido: "Pérez", 
        fdn: "10-12-1988", 
        licencia: "5551234-C", 
        origen: {
            ciudad: "Buenos Aires", 
            pais: "Argentina"
        }, 
        categorias: ["A"], 
        fecha_vencimiento: "20-03-2028"
    },
    {
        _id: "61028457", 
        nombre: "Ana", 
        apellido: "Fernández", 
        fdn: "05-03-2000", 
        licencia: "7778889-D", 
        origen: {
            ciudad: "Salto", 
            pais: "Uruguay"
        }, 
        categorias: ["G1", "G2"], 
        fecha_vencimiento: "12-11-2025"
    },
    {
        _id: "45673920", 
        nombre: "Luis", 
        apellido: "García", 
        fdn: "18-07-1992", 
        licencia: "3334445-E", 
        origen: {
            ciudad: "Punta del Este", 
            pais: "Uruguay"
        }, 
        categorias: ["G2", "A"], 
        fecha_vencimiento: "08-09-2029"
    }
])

// Una vez creado clientes y vehiculos, ahora inserto valores en "alquiler"
db.alquiler.insertMany([
    {
        _id: 1,
        fecha_retiro: "3-11-2025", 
        hora_retiro: "10:45hs", 
        vehiculo_id: "GBA 2040", 
        cliente_id: "57460809",
        fecha_retorno: "5-11-2025", 
        hora_retorno: "10:45hs", 
        kms_libres: 300, 
        combustible: "lleno"
    },
    {
        _id: 2,
        fecha_retiro: "10-11-2025", 
        hora_retiro: "14:30hs", 
        vehiculo_id: "SCL 3456", 
        cliente_id: "48392015",
        fecha_retorno: "15-11-2025", 
        hora_retorno: "14:30hs", 
        kms_libres: 500, 
        combustible: "lleno"
    },
    {
        _id: 3,
        fecha_retiro: "12-11-2025", 
        hora_retiro: "09:00hs", 
        vehiculo_id: "BUE 1122", 
        cliente_id: "52134678",
        fecha_retorno: "20-11-2025", 
        hora_retorno: "18:00hs", 
        kms_libres: 1000, 
        combustible: "lleno"
    },
    {
        _id: 4,
        fecha_retiro: "15-11-2025", 
        hora_retiro: "11:15hs", 
        vehiculo_id: "CBA 5544", 
        cliente_id: "61028457",
        fecha_retorno: "18-11-2025", 
        hora_retorno: "11:15hs", 
        kms_libres: 400, 
        combustible: "lleno"
    },
    {
        _id: 5,
        fecha_retiro: "20-11-2025", 
        hora_retiro: "16:00hs", 
        vehiculo_id: "MVD 7890", 
        cliente_id: "45673920",
        fecha_retorno: "25-11-2025", 
        hora_retorno: "16:00hs", 
        kms_libres: 800, 
        combustible: "lleno"
    }
])
