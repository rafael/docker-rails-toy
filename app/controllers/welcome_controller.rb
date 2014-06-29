class WelcomeController < ApplicationController
  def index
    render json: { ok: 'success', version: 2, service_host: ENV['SERVICE_HOST'] }
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
