require 'chefspec'

describe 'chef-server-webapp::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'chef-server-webapp::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
