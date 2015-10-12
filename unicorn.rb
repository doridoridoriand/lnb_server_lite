@directory = '/home/vagrant/works/lnb_server_lite/'

worker_processes 4
working_directory @directory

timeout 30
listen  3000

pid "#{@directory}tmp/unicorn.pid"
stderr_path "#{@directory}tmp/unicorn.stderr.log"
stdout_path "#{@directory}tmp/unicorn.stdout.log"
