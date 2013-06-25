class MembersController < InheritedResources::Base
  defaults :resource_class => User
  load_and_authorize_resource :user, :parent => false


  # load_and_authorize_resource :except => [:create]


  helper_method :user, :users

  def admin
    resource.toggle("admin").save
    redirect_to collection_url
  end

  def curator
    resource.toggle("curator").save
    redirect_to collection_url
  end

  def users
    collection
  end

  def user
    resource
  end

protected
  def permitted_params
    params.permit(:user => [:email, :password])
  end
end
