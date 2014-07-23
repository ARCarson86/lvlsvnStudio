class PostsController < ActionController::Base
	extend FriendlyId
  friendly_id :name, use: :slugged

  before_action :set_post, only: [:show, :edit, :update, :destroy]

	def show

	end

 private
  def set_post
    @post = Post.friendly.find(params[:id])
  end
end
