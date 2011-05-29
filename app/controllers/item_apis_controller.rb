class ItemApisController < ApplicationController
  # GET /item_apis
  # GET /item_apis.xml
  def index
    @item_apis = ItemApi.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_apis }
    end
  end

  # GET /item_apis/1
  # GET /item_apis/1.xml
  def show
    @item_api = ItemApi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_api }
    end
  end

  # GET /item_apis/new
  # GET /item_apis/new.xml
  def new
    @item_api = ItemApi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_api }
    end
  end

  # GET /item_apis/1/edit
  def edit
    @item_api = ItemApi.find(params[:id])
  end

  # POST /item_apis
  # POST /item_apis.xml
  def create
    @item_api = ItemApi.new(params[:item_api])

    respond_to do |format|
      if @item_api.save
        format.html { redirect_to(@item_api, :notice => 'Item api was successfully created.') }
        format.xml  { render :xml => @item_api, :status => :created, :location => @item_api }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_api.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_apis/1
  # PUT /item_apis/1.xml
  def update
    @item_api = ItemApi.find(params[:id])

    respond_to do |format|
      if @item_api.update_attributes(params[:item_api])
        format.html { redirect_to(@item_api, :notice => 'Item api was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_api.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_apis/1
  # DELETE /item_apis/1.xml
  def destroy
    @item_api = ItemApi.find(params[:id])
    @item_api.destroy

    respond_to do |format|
      format.html { redirect_to(item_apis_url) }
      format.xml  { head :ok }
    end
  end
end
