class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if params[:name].blank? and params[:adjective].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is so " + params[:adjective]
  end

  def age
  end

  def person
    p = person.new params[:name], params[:age]
    @a = p.introduce
    @b = p.birth_year
    @c = p.nickname
  end
end
