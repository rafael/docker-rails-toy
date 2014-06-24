$redis_master = Redis.new(:host => ENV["SERVICE_HOST"],  :port => ENV["REDISMASTER_SERVICE_PORT"])
$redis_slave = Redis.new(:host => ENV["SERVICE_HOST"],  :port => ENV["REDISSLAVE_SERVICE_PORT"])
