wb = xlsx_package.workbook

wb.add_worksheet(name: "Productos") do |sheet|
  sheet.add_row ["ID", "Referencia", "Nombre", "Cantidad"]
  @products.each do |item|
    sheet.add_row [item.id, item.reference, item.name, item.quantity]
  end
end