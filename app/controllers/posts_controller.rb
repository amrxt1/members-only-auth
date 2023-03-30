class PostsController < ApplicationController

    #before_action :authenticate_member!, only: [:new, :create]

    def new
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        @post.member_id = current_user.id

        if @post.save
            redirect_to root_url
        else
            render :new
        end
    end
    def index
    end

    private
    def post_params
        params.require(:post).permit(:title,:body)
    end
end
