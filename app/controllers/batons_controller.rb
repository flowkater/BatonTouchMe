class BatonsController < ApplicationController
  # GET /batons
  # GET /batons.json
  def index
    @batons = Baton.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @batons }
    end
  end

  # GET /batons/1
  # GET /batons/1.json
  def show
    @baton = Baton.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baton }
    end
  end

  # GET /batons/new
  # GET /batons/new.json
  def new
    @baton = Baton.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baton }
    end
  end

  # GET /batons/1/edit
  def edit
    @baton = Baton.find(params[:id])
  end

  # POST /batons
  # POST /batons.json
  def create
    @baton = Baton.new(params[:baton])

    respond_to do |format|
      if @baton.save
        format.html { redirect_to @baton, notice: 'Baton was successfully created.' }
        format.json { render json: @baton, status: :created, location: @baton }
      else
        format.html { render action: "new" }
        format.json { render json: @baton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /batons/1
  # PUT /batons/1.json
  def update
    @baton = Baton.find(params[:id])

    respond_to do |format|
      if @baton.update_attributes(params[:baton])
        format.html { redirect_to @baton, notice: 'Baton was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batons/1
  # DELETE /batons/1.json
  def destroy
    @baton = Baton.find(params[:id])
    @baton.destroy

    respond_to do |format|
      format.html { redirect_to batons_url }
      format.json { head :no_content }
    end
  end
end
