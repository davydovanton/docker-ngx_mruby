# docker stop $(docker ps -a -q)
# sudo docker build -t local/docker-ngx_mruby  .
# sudo docker run -p 80:80 -v /vagrant:/vagrant  -t local/dker-ngx_mruby
#
# check for 1k requests to server in one time

r = Nginx::Request.new
file_url = "/vagrant/#{r.uri.sub('/mruby-test/', '')}"

until (File.exist?(file_url))
  sleep 1
end

Nginx.echo "file exist : #{file_url} : #{File.exists?(file_url)}"
