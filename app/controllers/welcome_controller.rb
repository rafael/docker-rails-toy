class WelcomeController < ApplicationController
  def index
    render json: { ok: 'success', tete: 'success2', ps: 'tete' }
  end

  def redis
    a = $redis_master.get("te")
    render json: { ok: a }
  end
end
