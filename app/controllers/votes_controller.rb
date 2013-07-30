class VotesController < ApplicationController

  def new
  end

  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
      render :show
    else
      flash[:error] = @vote.errors.messages
      render :new
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.delete
    redirect_to votes_path
  end

end