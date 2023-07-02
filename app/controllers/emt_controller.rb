class EmtController < ApplicationController
  def index
    @instruments = Instrument.all
    @teachers = Teacher.all
  end
end
