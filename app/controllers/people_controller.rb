class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]
  before_action :upload, only:[:upload]
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render :new 
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end

   private
    def find_person
      @person = Person.find(params[:id])
    end
    def person_params
      params.require(:person).permit(:id,:first_name, :last_name, :photo)
    end
    def upload
    @uploaded_io = params[:person][:photo]
    File.open(Rails.root.join('public', 'uploads', @uploaded_io.original_filename), 'wb') do |file|
    file.write(uploaded_io.read)
    end
  end
end
