module Rails
  class << self
    def root
      File.expand_path(__FILE__).split('/')[0..-3].join('/')
    end
  end
end

# unicorn_rails -c /data/github/current/config/unicorn.rb -E production -D
rails_env = ENV['RAILS_ENV'] || 'production'

preload_app true
working_directory Rails.root

pid "#{Rails.root}/tmp/pids/unicorn.pid"
stderr_path "#{Rails.root}/log/unicorn.log"
stdout_path "#{Rails.root}/log/unicorn.log"

# 4 workers and 1 master
worker_processes (rails_env == 'production' ? 4 : 2)
timeout 120

listen '/tmp/sockets/unicorn.durex.sock'
listen 4000, :tcp_nopush => false

before_fork do |server, worker|
  old_pid = "#{Rails.root}/tmp/pids/unicorn.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      puts "Send 'QUIT' signal to unicorn error!"
    end
  end
end


