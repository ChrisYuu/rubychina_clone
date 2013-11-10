class TopicsController < ApplicationController
  def index
	@topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    #render text: params[:topic].inspect
    Topic.create(params[:topic].permit(:title, :content, :node_id))
    redirect_to root_path
  end

end
