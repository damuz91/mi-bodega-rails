productos = [
  {name: 'Producto 1', description: 'Descripcion del producto 1', reference: 'P1'},
  {name: 'Producto 2', description: 'Descripcion del producto 2', reference: 'P2'},
  {name: 'Producto 3', description: 'Descripcion del producto 3', reference: 'P3'},
  {name: 'Producto 4', description: 'Descripcion del producto 4', reference: 'P4'},
  {name: 'Producto 5', description: 'Descripcion del producto 5', reference: 'P5'},
]

productos.each do |p|
  Product.create(p)
end

productos = Product.all

(1..50).each do |i|
  Movement.create({product_id: productos.sample.id, movement_type: [Movement::MovementTypes[:add],Movement::MovementTypes[:remove]].sample, quantity: (1..100).to_a.sample, comment: "Movimiento #{i}"})
end