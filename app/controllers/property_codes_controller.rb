class PropertyCodesController < ApplicationController
  # GET /property_codes
  # GET /property_codes.json
  def index
    @property_codes = PropertyCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_codes }
    end
  end

  # GET /property_codes/1
  # GET /property_codes/1.json
  def show
    @property_code = PropertyCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_code }
    end
  end

  # GET /property_codes/new
  # GET /property_codes/new.json
  def new
    @property_code = PropertyCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_code }
    end
  end

  # GET /property_codes/1/edit
  def edit
    @property_code = PropertyCode.find(params[:id])
  end

  # POST /property_codes
  # POST /property_codes.json
  def create
    @property_code = PropertyCode.new(params[:property_code])

    respond_to do |format|
      if @property_code.save
        format.html { redirect_to @property_code, notice: 'Property code was successfully created.' }
        format.json { render json: @property_code, status: :created, location: @property_code }
      else
        format.html { render action: "new" }
        format.json { render json: @property_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_codes/1
  # PUT /property_codes/1.json
  def update
    @property_code = PropertyCode.find(params[:id])

    respond_to do |format|
      if @property_code.update_attributes(params[:property_code])
        format.html { redirect_to @property_code, notice: 'Property code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_codes/1
  # DELETE /property_codes/1.json
  def destroy
    @property_code = PropertyCode.find(params[:id])
    @property_code.destroy

    respond_to do |format|
      format.html { redirect_to property_codes_url }
      format.json { head :no_content }
    end
  end
end
