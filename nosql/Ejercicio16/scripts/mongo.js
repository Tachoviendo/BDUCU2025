
db = db.getSiblingDB('UCUDOCK2025');

db.CLIENTES.insertMany([
  {cedula: "11111111", nombre: "Pedro", apellido: "Silva", fecha_nacimiento: new Date("1991-04-12"), telefono: "099111111"},
  {cedula: "22222222", nombre: "Laura", apellido: "Torres", fecha_nacimiento: new Date("1993-07-25"), telefono: "099222222"},
  {cedula: "33333333", nombre: "Diego", apellido: "Ramos", fecha_nacimiento: new Date("1987-09-18"), telefono: "099333333"},
  {cedula: "44444444", nombre: "Sofía", apellido: "Castro", fecha_nacimiento: new Date("1994-01-05"), telefono: "099444444"},
  {cedula: "55555555", nombre: "Martín", apellido: "Vega", fecha_nacimiento: new Date("1989-06-28"), telefono: "099555555"}
]);
