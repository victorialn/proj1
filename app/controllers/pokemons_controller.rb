class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save
		redirect_to root_path
	end
	# def show
	# 	@pokemon = Pokemon.find(params[:id])
	# end
	# def index
	# 	@pokemons = Pokemon.all
	# end
	def create
		pokemon = Pokemon.new(pokemon_params)
		
		pokemon.trainer = current_trainer
		pokemon.level = 1
		if pokemon.save
		# @pokemon = Pokemon.new
		# @pokemon = Trainer.find(params[:d])
		# @pokemon = Pokemon.find(params[:id])
		
		# pokemon.health = 100
		
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to new_path
			flash[:error] = pokemon.errors.full_messages.to_sentence
		end
		# pokemon = Pokemon.new
		
	end

	def new
		# pokemon = Pokemon.new
		@pokemon = Pokemon.new


		# redirect_to root_path
		# redirect_to trainers_path(@current_trainer)
		# redirect_to controller: 'trainers', action: 'show'
	end
	private
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
	


# grab the id of the pokemon fromt
# the parameteers and set that pokemon's
#trainer to be (current_trainer) 

end