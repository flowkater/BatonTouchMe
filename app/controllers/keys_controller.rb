class KeysController < ApplicationController
    def show
      @key = key.find(params[:id])
    end

    def new
      @key = key.new
    end

    def create
      @key = key.new(params[:key])
      if @key.save
        sign_in @key
        flash[:success] = "Welcome to the StudyGroup!"
        redirect_to @key
      else
        render 'new'
      end
    end

    private
      def correct_key
        @key = key.find(params[:id])
        redirect_to(root_path) unless current_key?(@key)
      end
end
