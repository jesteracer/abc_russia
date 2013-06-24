class PhotosController < InheritedResources::Base
  respond_to :json, :html
  load_and_authorize_resource :person
  load_and_authorize_resource through: :person
  belongs_to :person

  def create
    create!{collection_url}
  end
  def update
    update!{collection_url}
  end

protected
  def permitted_params
    params.permit(:photo => [:attachment, :main])
  end
end
