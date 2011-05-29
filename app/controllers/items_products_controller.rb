class ItemsProductsController < ApplicationController
  # GET /items_products
  # GET /items_products.xml
  def index
    @items_products = ItemsProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items_products }
    end
  end

  # GET /items_products/1
  # GET /items_products/1.xml
  def show
    @items_product = ItemsProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @items_product }
    end
  end

  # GET /items_products/new
  # GET /items_products/new.xml
  def new
    @items_product = ItemsProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @items_product }
    end
  end

  # GET /items_products/1/edit
  def edit
    @items_product = ItemsProduct.find(params[:id])
  end

  # POST /items_products
  # POST /items_products.xml
  def create
    @items_product = ItemsProduct.new(params[:items_product])

    respond_to do |format|
      if @items_product.save
        format.html { redirect_to(@items_product, :notice => 'Items product was successfully created.') }
        format.xml  { render :xml => @items_product, :status => :created, :location => @items_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @items_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items_products/1
  # PUT /items_products/1.xml
  def update
    @items_product = ItemsProduct.find(params[:id])

    respond_to do |format|
      if @items_product.update_attributes(params[:items_product])
        format.html { redirect_to(@items_product, :notice => 'Items product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @items_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items_products/1
  # DELETE /items_products/1.xml
  def destroy
    @items_product = ItemsProduct.find(params[:id])
    @items_product.destroy

    respond_to do |format|
      format.html { redirect_to(items_products_url) }
      format.xml  { head :ok }
    end
  end
end
