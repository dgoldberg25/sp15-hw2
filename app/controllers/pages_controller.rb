class PagesController < ApplicationController
  def home
    @baz = Foobar.baz(["1", "2", "3", "3", "4", "5", "10", "11", "100"])
  end

  def stringify
    if params[:name].blank? and params[:adjective].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is " + params[:adjective]
    end
  end

  def age
  end

  def person
    person = Person.new(params[:name],params[:age])
    @intro = person.introduce
    @nickname = person.nickname
    @birth = person.birth_year
  end
end
