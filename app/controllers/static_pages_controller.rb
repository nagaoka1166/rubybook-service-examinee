class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:terms]

  def terms
  end
end
