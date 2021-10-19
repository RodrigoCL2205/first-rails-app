class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    search = params[:teacher]
    @teachers = ['tatchi', 'gui', 're', 'mariana', 'carlos']

    if search.present?
      @teachers = @teachers.select { |teacher| teacher.downcase.start_with?(params[:teacher]) }
    end
    raise
  end
end
