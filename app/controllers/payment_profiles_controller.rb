class PaymentProfilesController < ApplicationController
  # GET /payment_profiles
  # GET /payment_profiles.xml
  def index
    @payment_profiles = PaymentProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @payment_profiles }
    end
  end

  # GET /payment_profiles/1
  # GET /payment_profiles/1.xml
  def show
    @payment_profile = PaymentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @payment_profile }
    end
  end

  # GET /payment_profiles/new
  # GET /payment_profiles/new.xml
  def new
    @payment_profile = PaymentProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @payment_profile }
    end
  end

  # GET /payment_profiles/1/edit
  def edit
    @payment_profile = PaymentProfile.find(params[:id])
  end

  # POST /payment_profiles
  # POST /payment_profiles.xml
  def create
    @payment_profile = PaymentProfile.new(params[:payment_profile])

    respond_to do |format|
      if @payment_profile.save
        format.html { redirect_to(@payment_profile, :notice => 'Payment profile was successfully created.') }
        format.xml  { render :xml => @payment_profile, :status => :created, :location => @payment_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @payment_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /payment_profiles/1
  # PUT /payment_profiles/1.xml
  def update
    @payment_profile = PaymentProfile.find(params[:id])

    respond_to do |format|
      if @payment_profile.update_attributes(params[:payment_profile])
        format.html { redirect_to(@payment_profile, :notice => 'Payment profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @payment_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_profiles/1
  # DELETE /payment_profiles/1.xml
  def destroy
    @payment_profile = PaymentProfile.find(params[:id])
    @payment_profile.destroy

    respond_to do |format|
      format.html { redirect_to(payment_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
