class PostsController < InheritedResources::Base
  helper_method :post, :posts

  def post
    resource
  end
  def posts
    collection
  end

protected
  def permitted_params
    params.permit(:post => [:name, :body, :person_ids => []])
  end
end
