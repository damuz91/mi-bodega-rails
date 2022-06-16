wb = xlsx_package.workbook

wb.add_worksheet(name: "Movimientos") do |sheet|
  sheet.add_row(["ID", @product.id])
  sheet.add_row(["Referencia", @product.reference])
  sheet.add_row(["Nombre", @product.name])
  sheet.add_row(["Cantidad", @product.quantity])
  sheet.add_row(["Descripción", @product.description])
  sheet.add_row(["Fecha de creación", @product.created_at])
  sheet.add_row([])
  sheet.add_row ["Tipo", "Cantidad", "Comentario", "Fecha"]
  @product.movements.each do |movement|
    sheet.add_row [movement.movement_type_name, movement.quantity, movement.comment, movement.created_at]
  end
end