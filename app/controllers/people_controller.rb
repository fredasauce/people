class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end

  def update
    @people = Person.find(params[:id])
    
    if @people.update(people_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  def create
    @people = Person.new(people_params)

    if @people.save
      redirect_to people_path
    else
      render :new
    end
  end

  private
    def people_params
      params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
    end
end
