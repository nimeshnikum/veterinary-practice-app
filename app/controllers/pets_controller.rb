class PetsController < ApplicationController
  
  def index
    @pets = Pet.all
  end
  
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:success] = "Pet registered!"
      redirect_to pets_path
    else
      flash[:danger] = "Something went wrong."
      render 'new'
    end
  end
  
  private
  
    def pet_params
      params.require(:pet).permit(:name_of_pet, :user_id, :type_of_pet, :breed, :age, :weight, :date_last_visited)
    end
  
end
