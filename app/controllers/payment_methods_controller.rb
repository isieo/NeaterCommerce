class PaymentMethodsController < ApplicationController
  # GET /payment_methods
  # GET /payment_methods.xml
  def index
    @payment_methods = PaymentMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @payment_methods }
    end
  end

  # GET /payment_methods/1
  # GET /payment_methods/1.xml
  def show
    @payment_method = PaymentMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @payment_method }
    end
  end

  # GET /payment_methods/new
  # GET /payment_methods/new.xml
  def new
    @payment_method = PaymentMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @payment_method }
    end
  end

  # GET /payment_methods/1/edit
  def edit
    @payment_method = PaymentMethod.find(params[:id])
  end

  # POST /payment_methods
  # POST /payment_methods.xml
  def create
    @payment_method = PaymentMethod.new(params[:payment_method])

    respond_to do |format|
      if @payment_method.save
        format.html { redirect_to(@payment_method, :notice => 'Payment method was successfully created.') }
        format.xml  { render :xml => @payment_method, :status => :created, :location => @payment_method }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @payment_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /payment_methods/1
  # PUT /payment_methods/1.xml
  def update
    @payment_method = PaymentMethod.find(params[:id])

    respond_to do |format|
      if @payment_method.update_attributes(params[:payment_method])
        format.html { redirect_to(@payment_method, :notice => 'Payment method was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @payment_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_methods/1
  # DELETE /payment_methods/1.xml
  def destroy
    @payment_method = PaymentMethod.find(params[:id])
    @payment_method.destroy

    respond_to do |format|
      format.html { redirect_to(payment_methods_url) }
      format.xml  { head :ok }
    end
  end
end
