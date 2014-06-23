class WelcomeController < ApplicationController
  def index
    render json: { ok: 'success', tete: 'success2', ps: 'tete' }
  end
end
