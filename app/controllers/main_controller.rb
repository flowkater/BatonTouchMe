class MainController < ApplicationController
  def home
  end

  def info
  end

  def runners
  end

  def find
    @search = Baton.search(params[:q])
    @baton = @search.result.limit(1)
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
    @baton = Baton.new(params[:baton])

    if @baton.save
      redirect_to @baton
    else
      render action: "regist"
    end
  end

  def create1
    @baton = Baton.new(params[:baton])

    if @baton.save
      redirect_to @baton
    else
      render action: "regist1"
    end
  end

  def create2
    @baton = Baton.new(params[:baton])

    if @baton.save
      redirect_to @baton
    else
      render action: "regist2"
    end
  end

  def create3
    @baton = Baton.new(params[:baton])

    if @baton.save
      redirect_to @baton
    else
      render action: "regist3"
    end
  end

  def create4
    @baton = Baton.new(params[:baton])

    if @baton.save
      redirect_to @baton
    else
      render action: "regist4"
    end
  end

  protected

  def baton
    @baton = Baton.new
  end
end
