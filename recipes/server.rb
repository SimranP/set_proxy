yum_package 'squid'

ruby_block 'edit_http_port_in_squid_config' do
  block do
    file = Chef::Util::FileEdit.new('/etc/squid/squid.conf')
    file.search_file_delete('http_port 3128')
    file.search_file_delete('http_port 8080')
    file.insert_line_if_no_match('#Squid normally listens to port 3128', "acl my_client src 192.168.100.3\nhttp_access allow my_client\nhttp_port 8080")
    file.write_file
  end
end


execute 'starting_squid' do
  command 'sudo service squid start'
end
