class PatternsController < ApplicationController

  def index
  end


  def new
  end

  def create
    @pattern = Pattern.new(params[:pattern])
    if @pattern.save
      redirect_to :patterns, status: :created
    else
      render :new, status: :bad_request
    end
  end

end
