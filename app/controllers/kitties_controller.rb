class KittiesController < ApplicationController
  def index
    @kitties = Kitty.all
  end

  def show
    @kitty = Kitty.find(params[:id])
  end

  # the above two are normally just like this


  def new
    @kitty = Kitty.new
  end

  def create
    Kitty.create(kitty_params)

    redirect_to kitties_path
  end

  def edit
    @kitty = Kitty.find(params[:id])
  end


  def update
    @kitty = Kitty.find(params[:id])
    @kitty.update(kitty_params)
    # @kitty.update(edit_kitty_params)
    # can do this...

    redirect_to kitty_path(@kitty)
  end

  private

  def kitty_params
    params.require(:kitty).permit(:color, :alive, :legs, :location, :photo_url)
  end

  def edit_kitty_params
    # kitty_params.permit(:something_new)
    # params.require(:kitty).permit(:something_else :color, :alive, :legs, :location, :photo_url)
  end
  # <!-- rails g migration rename_found_to_rescued_in_kitties -->
  # <!-- have a new feild, have a table... -->
  # <!-- permit is not working -->
  # <!-- so need to update the permits in the controller -->

end

# add_columnname_to_tablename
# or CamelCase

# remove_columnname_from_tablename

# rename_


# rails generate migration add_found_to_kitties
