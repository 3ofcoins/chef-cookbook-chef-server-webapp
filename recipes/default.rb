# Chef Server Webapp
# ==================

node.override['chef-server']['configuration']['nginx']['non_ssl_port'] = node['chef-server']['webapp']['backend_http_port']
node.override['chef-server']['configuration']['nginx']['ssl_port'] = node['chef-server']['webapp']['backend_https_port']

include_recipe 'chef-server'
include_recipe 'apache2'
include_recipe 'apache2::mod_proxy'
include_recipe 'apache2::mod_proxy_http'
include_recipe 'apache2::mod_ssl'

web_app 'chef-server'
