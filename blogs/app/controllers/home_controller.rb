class HomeController < ApplicationController
  def index
  	@user = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(:name => params[:user][:name], :age => params[:user][:age], :address => params[:user][:address], :gender => params[:user][:gender])
  	redirect_to :action => "index"
  end

  def delete
  	@user = User.new
  end

  def delete_user
  	@user = User.find(params[:user][:id])
  	@user.delete
  	redirect_to :action => "index"
  end

  def edit
  	@user = User.new
  end

  def update
  	@user = User.find(params[:user][:id])
  end

  def update_user
  	@user = User.find(params[:user][:id])
  	@user.update(:name => params[:user][:name], :age => params[:user][:age], :address => params[:user][:address], :gender => params[:user][:gender])
  	redirect_to :action => "index"
  end
end
