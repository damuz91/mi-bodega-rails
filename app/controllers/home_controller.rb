class HomeController < ApplicationController
  def dashboard
    @latest_movements = Movement.last(10)
    # La versión SQL y la versión Rails de la misma consulta:
    # @top_products = Product.find_by_sql("SELECT p.* FROM products p INNER JOIN movements m ON p.id = m.product_id WHERE m.movement_type = #{Movement::MovementTypes[:add]} GROUP BY p.id ORDER BY SUM(m.quantity) DESC LIMIT 10")
    @top_products = Product.joins(:movements).where(movements: {movement_type: Movement::MovementTypes[:add]}).group(:id).order("SUM(movements.quantity) DESC").limit(10)
  end
end
