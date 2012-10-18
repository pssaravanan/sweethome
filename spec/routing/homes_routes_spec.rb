require 'spec_helper'
describe 'Home Routes' do
  it 'should route /home/index' do
    { :get => '/homes' }.should route_to  :action => "index", :controller => "homes"
  end
end
