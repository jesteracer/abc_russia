class PeopleController < InheritedResources::Base
  load_and_authorize_resource
  helper_method :person, :people

protected
  def person
    resource
  end

  def people
    collection
  end

  def permitted_params
    params.permit(:person => [:about, :accounts, :accused_for, :birth_date, :contacts, :fio, :address, :imprisoned_date, :release_date, :status, :current_account, :user_ids => []])
  end
end
