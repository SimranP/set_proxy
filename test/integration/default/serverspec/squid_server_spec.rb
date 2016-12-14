require 'serverspec'
set :backend, :exec

describe package('squid') do
   it { should be_installed }
end

describe service('squid') do
   it { should be_running }
end