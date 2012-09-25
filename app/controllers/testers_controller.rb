#encoding: UTF-8
class TestersController < ApplicationController
  # GET /testers
  # GET /testers.json
  def index
    @testers = Tester.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testers }
    end
  end

  # GET /testers/new
  # GET /testers/new.json
  def new
    @tester = Tester.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tester }
    end
  end

  # POST /testers
  # POST /testers.json
  def create
    @tester = Tester.new(params[:tester])

    if @tester.save
      flash[:notice] = "성공적으로 신청이 완료되었습니다^^"
      redirect_to root_path
    else
      flash[:error] = "러너 등록에 실패했습니다."
      render action: "new"
    end
  end
end
