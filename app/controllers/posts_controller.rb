class PostsController < ApplicationController
	def index
		@posts = Post.all.order(id: "DESC")


	end

	#def new
	 #end

	 def checked
		 post = Post.find(params[id])
		 if post.checked
        post.update(checked:false)
			 
		 else
				post.update(checked:true)

		 end

		 item = post.update(checked:true)
		 render = json: { post:item}



		 
	 end

	def create
		Post.create(content: params[:content])
		redirect_to action: :index
	end
end
