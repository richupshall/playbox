require 'serverspec'

set :backend, :exec

describe file('/tmp/greeting.txt') do
  its(:content) { should match 'Ohai, chefs!'}
end
