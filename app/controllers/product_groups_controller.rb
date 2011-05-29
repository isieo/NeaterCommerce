class ProductGroupsController < ApplicationController
  # GET /product_groups
  # GET /product_groups.xml
  def index
    @product_groups = ProductGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_groups }
    end
  end

  # GET /product_groups/1
  # GET /product_groups/1.xml
  def show
    @product_group = ProductGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_group }
    end
  end

  # GET /product_groups/new
  # GET /product_groups/new.xml
  def new
    @product_group = ProductGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_group }
    end
  end

  # GET /product_groups/1/edit
  def edit
    @product_group = ProductGroup.find(params[:id])
  end

  # POST /product_groups
  # POST /product_groups.xml
  def create
    @product_group = ProductGroup.new(params[:product_group])

    respond_to do |format|
      if @product_group.save
        format.html { redirect_to(@product_group, :notice => 'Product group was successfully created.') }
        format.xml  { render :xml => @product_group, :status => :created, :location => @product_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_groups/1
  # PUT /product_groups/1.xml
  def update
    @product_group = ProductGroup.find(params[:id])

    respond_to do |format|
      if @product_group.update_attributes(params[:product_group])
        format.html { redirect_to(@product_group, :notice => 'Product group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_groups/1
  # DELETE /product_groups/1.xml
  def destroy
    @product_group = ProductGroup.find(params[:id])
    @product_group.destroy

    respond_to do |format|
      format.html { redirect_to(product_groups_url) }
      format.xml  { head :ok }
    end
  end
end
