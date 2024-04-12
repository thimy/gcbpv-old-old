class EmtController < ApplicationController
  def index
    @instruments = Instrument.all
    @teachers = Teacher.all
  end

  def show
    @season = ::Configuration.first.season
    @discoveries = Discovery.all
  end
end
