class PatientcasesController < ApplicationController
  # GET /patientcases
  # GET /patientcases.json
  def index
    @patientcases = Patientcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @patientcases }
    end
  end

  # GET /patientcases/1
  # GET /patientcases/1.json
  def show
    @patientcase = Patientcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @patientcase }
    end
  end

  # GET /patientcases/new
  # GET /patientcases/new.json
  def new
    @patientcase = Patientcase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @patientcase }
    end
  end

  # GET /patientcases/1/edit
  def edit
    @patientcase = Patientcase.find(params[:id])
  end

  # POST /patientcases
  # POST /patientcases.json
  def create
    @patientcase = Patientcase.new(params[:patientcase])

    respond_to do |format|
      if @patientcase.save
        format.html { redirect_to @patientcase, :notice => 'Patientcase was successfully created.' }
        format.json { render :json => @patientcase, :status => :created, :location => @patientcase }
      else
        format.html { render :action => "new" }
        format.json { render :json => @patientcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patientcases/1
  # PUT /patientcases/1.json
  def update
    @patientcase = Patientcase.find(params[:id])

    respond_to do |format|
      if @patientcase.update_attributes(params[:patientcase])
        format.html { redirect_to @patientcase, :notice => 'Patientcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @patientcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patientcases/1
  # DELETE /patientcases/1.json
  def destroy
    @patientcase = Patientcase.find(params[:id])
    @patientcase.destroy

    respond_to do |format|
      format.html { redirect_to patientcases_url }
      format.json { head :no_content }
    end
  end
end
