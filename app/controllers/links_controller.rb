class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      render :show
    else
      flash[:error] = @link.errors.messages
      render :new
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    @link.update_attributes(params[:link])
    render :show
  end

  def destroy
    link= Link.find(params[:id])
    link.delete
    redirect_to links_path
  end


end
