class UsersController < ApplicationController

  def index
    @usuarios=User.all
  end

  def show
    @usuario=User.find(1)
  end
end
