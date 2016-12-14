ruby_block 'insert_environment_variables_in_bash_profile' do
  block do
    file = Chef::Util::FileEdit.new('/home/vagrant/.bash_profile')
    file.insert_line_if_no_match('http_proxy', "export http_proxy='http://192.168.100.2:8080'")
    file.insert_line_if_no_match('https_proxy', "export https_proxy='https://192.168.100.2:8080'")
    file.write_file
  end
end