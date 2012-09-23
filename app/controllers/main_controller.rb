#encoding: UTF-8
class MainController < ApplicationController
  # before_filter :signed_in_authkey, only: [:find,:regist,:regist1,:regist2,
                                      # :regist3,:regist4,:create,:create1,
                                      # :create2,:create3,:create4]
  before_filter :signed_in_authkey, only: [:find,:regist,:regist1,:regist2,
                                      :regist3,:regist4,:create,:create1,
                                      :create2,:create3,:create4,
                                      :daniel, :casanova, :hulk, :thinkerbell]                                    
  before_filter :baton_greater, only: [:regist,:regist1,:regist2,
                                      :regist3,:regist4]                                      
  
  def home
  end

  def info
  end

  def runners
  end

  def find
    @batons = current_authkey.batons
    @genkeys = current_authkey.genkeys
  end

  def daniel
  end

  def casanova
  end

  def hulk
  end

  def thinkerbell
  end

  def regist1
    baton   
  end

  def regist2
    baton
  end

  def regist3
    baton
  end

  def regist4
    baton
  end

  def regist
    baton
  end

  def create
    @baton = current_authkey.batons.build(params[:baton])
    @baton.runner_id = 0
    @baton.anywork = 1

    if @baton.save
      flash[:notice] = "바톤을 등록했습니다! 바톤은 5개까지 등록할 수 있습니다^^"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "regist"
    end
  end

  def create1
    @baton = current_authkey.batons.build(params[:baton])
    @baton.runner_id = 1
    if @baton.save
      flash[:notice] = "바톤을 등록했습니다! 바톤은 5개까지 등록할 수 있습니다^^"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "regist1"
    end
  end

  def create2
    @baton = current_authkey.batons.build(params[:baton])
    @baton.runner_id = 2
    if @baton.save
      flash[:notice] = "바톤을 등록했습니다! 바톤은 5개까지 등록할 수 있습니다^^"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "regist2"
    end
  end

  def create3
    @baton = current_authkey.batons.build(params[:baton])
    @baton.runner_id = 3
    if @baton.save
      flash[:notice] = "바톤을 등록했습니다! 바톤은 5개까지 등록할 수 있습니다^^"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "regist3"
    end
  end

  def create4
    @baton = current_authkey.batons.build(params[:baton])
    @baton.runner_id = 4
    if @baton.save
      flash[:notice] = "바톤을 등록했습니다! 바톤은 5개까지 등록할 수 있습니다^^"
      redirect_to find_path
    else
      flash[:error] = "바톤 등록에 실패했습니다!"
      render action: "regist4"
    end
  end

  protected

  def baton
    @baton = Baton.new
  end

  def baton_greater
    if current_authkey.batons.size >= 5
      flash[:notice] = "바톤을 5개 이상 생성할 수 없습니다^^"
      redirect_to root_path
    end
  end
end
