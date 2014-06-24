$redis_master = Redis.new(:host => "127.0.0.1",  :port => ENV["REDISMASTER_SERVICE_PORT"])
$redis_slave = Redis.new(:host => "127.0.0.1",  :port => ENV["REDISSLAVE_SERVICE_PORT"])
