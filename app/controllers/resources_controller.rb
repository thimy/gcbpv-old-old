class ResourcesController < ApplicationController
  def index
  end

  def editions
    @editions = Edition.all
  end

  def edition
    @edition = Edition.find(params[:id])
  end
end
