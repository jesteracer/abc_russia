class CurationsController < InheritedResources::Base
  load_and_authorize_resource :person
  load_and_authorize_resource through: :person
  belongs_to :person

  def create
    create!{collection_url}
  end
protected

  def permitted_params
    params.permit(:curation => [:user_id])
  end
end
