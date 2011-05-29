class AddressesController < ApplicationController
  # GET /addresses
  def index
    @addresses = Address.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /addresses/1
  def show
    @address = Address.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /addresses/new
  def new
    @address = Address.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /addresses/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /addresses
  def create
    @address = Address.new(params[:address])

    respond_to do |format|
      if @address.save
        format.html { redirect_to(@address, :notice => 'Address was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /addresses/1
  def update
    @address = Address.find(params[:id])

    respond_to do |format|
      if @address.update_attributes(params[:address])
        format.html { redirect_to(@address, :notice => 'Address was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /addresses/1
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { redirect_to(addresses_url) }
    end
  end
end
