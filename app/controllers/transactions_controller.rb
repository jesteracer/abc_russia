class TransactionsController < InheritedResources::Base
  respond_to :json, :html
  load_and_authorize_resource :person
  load_and_authorize_resource through: :person
  belongs_to :person

  def create
    create!{parent_url}
  end
  def update
    update!{parent_url}
  end

  def destroy
    destroy!{parent_url}
  end

protected
  def permitted_params
    params.permit(:transaction => [:about, :direction, :amount])
  end
end
