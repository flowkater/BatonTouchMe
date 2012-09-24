#encoding: UTF-8
class BatonsController < ApplicationController
  before_filter :signed_in_authkey, only: [:index, :edit,:useredit, :update, :daniel, :casa, :hulk, :think]
  # GET /batons
  # GET /batons.json
  def index
    if current_authkey.authkey.eql?("#fl0wk27er")
      @batons = Baton.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @batons }
      end
    elsif current_authkey.authkey.eql?("#daneld2130")
      redirect_to daniel_batons_path
    elsif current_authkey.authkey.eql?("#cassaj0105")
      redirect_to casa_batons_path
    elsif current_authkey.authkey.eql?("#hulkh2051")
      redirect_to hulk_batons_path
    elsif current_authkey.authkey.eql?("#genllt5055")
      redirect_to think_batons_path
    else
      redirect_to root_path
    end
  end

  def daniel
    if current_authkey.authkey.eql?("#daneld2130")
      @batons = Baton.daniel
      @anys = Baton.anyone
    else
      redirect_to root_path
    end
  end

  def casa
    if current_authkey.authkey.eql?("#cassaj0105")
      @batons = Baton.casa
      @anys = Baton.anyone
    else
      redirect_to root_path
    end
  end

  def hulk
    if current_authkey.authkey.eql?("#hulkh2051")
      @batons = Baton.hulk
      @anys = Baton.anyone
    else
      redirect_to root_path
    end
  end

  def think
    if current_authkey.authkey.eql?("#genllt5055")
      @batons = Baton.think
      @anys = Baton.anyone
    else
      redirect_to root_path
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

  def useredit
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

    if @baton.update_attributes(params[:baton])
      flash[:notice] = "성공적으로 바톤이 수정되었습니다!"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "useredit"
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
