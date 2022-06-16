class ProductsController < ApplicationController

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="Listado de productos.xlsx"'
      }
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Se ha creado el producto correctamente.'
    else
      flash[:notice] = 'Ha ocurrido un error al crear el producto.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = "attachment; filename=\"Listado de movimientos - #{@product.id}.xlsx\""
      }
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: 'Se actualizó el producto correctamente'
    else
      render :edit
    end
  end

  def new_movement
    @product = Product.find(params[:id])
    @movement = Movement.new(product_id: @product.id)
  end

  def create_movement
    @product = Product.find(params[:id])
    @movement = Movement.new(movement_params)
    @movement.product_id = @product.id
    if @movement.save
      redirect_to @product, notice: 'Se creó el movimiento correctamente'
    else
      flash[:notice] = 'Ha ocurrido un error al crear el movimiento.'
      render :new_movement, status: :unprocessable_entity
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :reference)
  end

  def movement_params
    params.require(:movement).permit(:movement_type, :quantity, :comment)
  end

end