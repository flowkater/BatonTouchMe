class MainController < ApplicationController
  before_filter :signed_in_key, only: [:find,:regist,:regist1,:regist2,
                                      :regist3,:regist4,:create,:create1,
                                      :create2,:create3,:create4]
  # before_filter :signed_in_key, only: [:find,:regist,:regist1,:regist2,
  #                                     :regist3,:regist4,:create,:create1,
  #                                     :create2,:create3,:create4,
  #                                     :daniel, :casanova, :hulk, :thinkerbell]
  def home
  end

  def info
  end

  def runners
  end

  def find
    @batons = current_key.batons
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
    @baton = current_key.batons.build(params[:baton])
    @baton.runner_id = 0
    @baton.anywork = 1

    if @baton.save
      redirect_to find_path
    else
      render action: "regist"
    end
  end

  def create1
    @baton = current_key.batons.build(params[:baton])
    @baton.runner_id = 1
    if @baton.save
      redirect_to find_path
    else
      render action: "regist1"
    end
  end

  def create2
    @baton = current_key.batons.build(params[:baton])
    @baton.runner_id = 2
    if @baton.save
      redirect_to find_path
    else
      render action: "regist2"
    end
  end

  def create3
    @baton = current_key.batons.build(params[:baton])
    @baton.runner_id = 3
    if @baton.save
      redirect_to find_path
    else
      render action: "regist3"
    end
  end

  def create4
    @baton = current_key.batons.build(params[:baton])
    @baton.runner_id = 4
    if @baton.save
      redirect_to find_path
    else
      render action: "regist4"
    end
  end

  protected

  def baton
    @baton = Baton.new
  end
end
