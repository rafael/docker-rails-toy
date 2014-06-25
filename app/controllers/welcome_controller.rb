class WelcomeController < ApplicationController
  def index
    render json: { ok: 'success', tete: 'success2', ps: 'tete' }
  end

  def redis
    count = $redis_slave.get("counter")
    render json: { count: count }
  end

  def redis_incr
    $redis_master.incr("counter")
    render json: { ok: 'success' }
  end
end
