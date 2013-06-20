class PeopleController < InheritedResources::Base
  helper_method :person, :people

protected
  def person
    resource
  end

  def people
    collection
  end

  def permitted_params
    params.permit(:person => [:about, :accounts, :accused_for, :birth_date, :contacts, :fio])
  end
end
