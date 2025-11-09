//mongoimport --db lavanderia --collection clientes --type csv --headerline --file Ej13_Clientes_fixed.csv

// Inserto las máquinas

db.maquinas.insertMany([
    {
        marca: "Caterpillar",
        modelo: "320D",
        capacidad: "20 toneladas",
        tarifa_hora: 150
    },
    {
        marca: "Komatsu",
        modelo: "PC200",
        capacidad: "18 toneladas",
        tarifa_hora: 140
    },
    {
        marca: "Volvo",
        modelo: "EC210",
        capacidad: "22 toneladas",
        tarifa_hora: 160
    },
    {
        marca: "JCB",
        modelo: "JS220",
        capacidad: "21 toneladas",
        tarifa_hora: 145
    },
    {
        marca: "Hitachi",
        modelo: "ZX200",
        capacidad: "19 toneladas",
        tarifa_hora: 135
    },
    {
        marca: "Liebherr",
        modelo: "R920",
        capacidad: "25 toneladas",
        tarifa_hora: 180
    },
    {
        marca: "Doosan",
        modelo: "DX225",
        capacidad: "23 toneladas",
        tarifa_hora: 155
    },
    {
        marca: "Case",
        modelo: "CX210",
        capacidad: "20 toneladas",
        tarifa_hora: 150
    },
    {
        marca: "Hyundai",
        modelo: "HX220",
        capacidad: "22 toneladas",
        tarifa_hora: 148
    },
    {
        marca: "SANY",
        modelo: "SY215",
        capacidad: "21 toneladas",
        tarifa_hora: 130
    }
])

// inserto proveedores 
/
db.proveedores.insertMany([
    {
        nombre: "Repuestos Industriales SA",
        direccion: "Av. Italia 2450, Montevideo",
        contacto: {
            nombre: "Carlos Rodríguez",
            telefono: "099 123 456"
        },
        productos: [
            { nombre: "Filtro de aceite", tipo: "Repuesto", precio: 450 },
            { nombre: "Correa de transmisión", tipo: "Repuesto", precio: 1200 },
            { nombre: "Pastillas de freno", tipo: "Repuesto", precio: 800 }
        ]
    },
    {
        nombre: "Lubricantes del Sur",
        direccion: "Ruta 1 Km 23, Canelones",
        contacto: {
            nombre: "María Fernández",
            telefono: "098 765 432"
        },
        productos: [
            { nombre: "Aceite hidráulico", tipo: "Lubricante", precio: 2500 },
            { nombre: "Grasa industrial", tipo: "Lubricante", precio: 800 },
            { nombre: "Aceite motor 15W40", tipo: "Lubricante", precio: 1800 }
        ]
    },
    {
        nombre: "Neumáticos Express",
        direccion: "Av. 8 de Octubre 3890, Montevideo",
        contacto: {
            nombre: "Jorge Martínez",
            telefono: "094 555 777"
        },
        productos: [
            { nombre: "Neumático 275/80R22.5", tipo: "Neumático", precio: 15000 },
            { nombre: "Cámara de aire", tipo: "Neumático", precio: 2500 },
            { nombre: "Protector de llanta", tipo: "Accesorio", precio: 800 }
        ]
    },
    {
        nombre: "Hidráulica Total",
        direccion: "Camino Maldonado 5600, Montevideo",
        contacto: {
            nombre: "Ana López",
            telefono: "099 888 999"
        },
        productos: [
            { nombre: "Cilindro hidráulico", tipo: "Componente", precio: 25000 },
            { nombre: "Bomba hidráulica", tipo: "Componente", precio: 35000 },
            { nombre: "Manguera alta presión", tipo: "Componente", precio: 3500 }
        ]
    },
    {
        nombre: "Electricidad Industrial Pérez",
        direccion: "Colón 1234, Montevideo",
        contacto: {
            nombre: "Roberto Pérez",
            telefono: "095 111 222"
        },
        productos: [
            { nombre: "Alternador 24V", tipo: "Eléctrico", precio: 12000 },
            { nombre: "Batería 180Ah", tipo: "Eléctrico", precio: 8500 },
            { nombre: "Cable eléctrico", tipo: "Eléctrico", precio: 150 }
        ]
    },
    {
        nombre: "Metales y Soldaduras",
        direccion: "Bvar. Artigas 2100, Montevideo",
        contacto: {
            nombre: "Luis García",
            telefono: "092 333 444"
        },
        productos: [
            { nombre: "Electrodo 7018", tipo: "Soldadura", precio: 500 },
            { nombre: "Disco de corte", tipo: "Herramienta", precio: 250 },
            { nombre: "Chapa de acero 6mm", tipo: "Material", precio: 4500 }
        ]
    },
    {
        nombre: "Tornillería Universal",
        direccion: "Av. Millán 4567, Montevideo",
        contacto: {
            nombre: "Patricia Gómez",
            telefono: "098 222 333"
        },
        productos: [
            { nombre: "Tornillo M12x50", tipo: "Fijación", precio: 25 },
            { nombre: "Tuerca M12", tipo: "Fijación", precio: 15 },
            { nombre: "Arandela M12", tipo: "Fijación", precio: 8 }
        ]
    },
    {
        nombre: "Combustibles Río de la Plata",
        direccion: "Ruta 5 Km 18, Canelones",
        contacto: {
            nombre: "Fernando Silva",
            telefono: "099 444 555"
        },
        productos: [
            { nombre: "Gasoil Premium", tipo: "Combustible", precio: 65 },
            { nombre: "Biodiesel B5", tipo: "Combustible", precio: 62 },
            { nombre: "Aditivo diesel", tipo: "Aditivo", precio: 450 }
        ]
    },
    {
        nombre: "Sistemas de Filtración",
        direccion: "Av. Agraciada 3200, Montevideo",
        contacto: {
            nombre: "Gabriela Núñez",
            telefono: "094 666 777"
        },
        productos: [
            { nombre: "Filtro de aire", tipo: "Filtro", precio: 850 },
            { nombre: "Filtro de combustible", tipo: "Filtro", precio: 650 },
            { nombre: "Filtro hidráulico", tipo: "Filtro", precio: 1200 }
        ]
    },
    {
        nombre: "Herramientas Profesionales",
        direccion: "18 de Julio 1950, Montevideo",
        contacto: {
            nombre: "Diego Ramírez",
            telefono: "091 777 888"
        },
        productos: [
            { nombre: "Juego de llaves", tipo: "Herramienta", precio: 3500 },
            { nombre: "Torquímetro", tipo: "Herramienta", precio: 8500 },
            { nombre: "Compresor de aire", tipo: "Equipo", precio: 25000 }
        ]
    }
])
