class CaseproceduresController < ApplicationController
  # GET /caseprocedures
  # GET /caseprocedures.json
  def index
    @caseprocedures = Caseprocedure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @caseprocedures }
    end
  end

  # GET /caseprocedures/1
  # GET /caseprocedures/1.json
  def show
    @caseprocedure = Caseprocedure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @caseprocedure }
    end
  end

  # GET /caseprocedures/new
  # GET /caseprocedures/new.json
  def new
    @caseprocedure = Caseprocedure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @caseprocedure }
    end
  end

  # GET /caseprocedures/1/edit
  def edit
    @caseprocedure = Caseprocedure.find(params[:id])
  end

  # POST /caseprocedures
  # POST /caseprocedures.json
  def create
    @caseprocedure = Caseprocedure.new(params[:caseprocedure])

    respond_to do |format|
      if @caseprocedure.save
        format.html { redirect_to @caseprocedure, :notice => 'Caseprocedure was successfully created.' }
        format.json { render :json => @caseprocedure, :status => :created, :location => @caseprocedure }
      else
        format.html { render :action => "new" }
        format.json { render :json => @caseprocedure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caseprocedures/1
  # PUT /caseprocedures/1.json
  def update
    @caseprocedure = Caseprocedure.find(params[:id])

    respond_to do |format|
      if @caseprocedure.update_attributes(params[:caseprocedure])
        format.html { redirect_to @caseprocedure, :notice => 'Caseprocedure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @caseprocedure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caseprocedures/1
  # DELETE /caseprocedures/1.json
  def destroy
    @caseprocedure = Caseprocedure.find(params[:id])
    @caseprocedure.destroy

    respond_to do |format|
      format.html { redirect_to caseprocedures_url }
      format.json { head :no_content }
    end
  end
end
