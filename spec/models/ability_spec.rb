describe Ability do
  it 'should allow home owner to create home' do
    home_owner = create(:home_owner)
    home = create(:home, :home_owner => home_owner)
    
  end
end
