class PostsController < InheritedResources::Base
  helper_method :post, :posts, :person

  def post
    resource
  end

  def posts
    collection
  end

protected

  def collection
    if params[:person_id]
      Post.on_person(params[:person_id])
    else
      super
    end
  end

  def person
    Person.find(params[:person_id]) if params[:person_id]
  end

  def permitted_params
    params.permit(:post => [:name, :body, :created_at, :person_ids => []])
  end
end