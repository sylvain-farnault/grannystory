class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end
end
