class Backend::PostsController < Backend::BaseController
  # before_action :find_post, only:[:show,:edit,:destroy,:update]
  # def index
  # 	@posts = Post.all
  # end

  # def new
  # 	@post = Post.new
  # end

  # def create
  # 	@post = Post.new(post_params)
  # 	if @post.save
  # 		redirect_to backend_posts_path
  # 	else
  # 		render 'new'
  # 	end
  # end

  # def show
  	
  # end

  # def edit
  	
  # end

  # def update
  # 	if @post.update(post_params)
  # 		redirect_to backend_posts_path
  # 	else
  # 		render :edit
  # 	end
  # end

  # def destroy
  # 	@post.destroy
  # 		redirect_to backend_posts_path
  # end

  private
    def collection_scope
      Post
    end
  	# def find_post
  	# 	@post = Post.find(params[:id])
  	# end
  	def object_params
  		params.require(:post).permit(:title,:content,:publish_date)
  	end
end
