require 'docking_station.rb'

describe DockingStation do
=begin
  it 'responds to the method release_bike' do
    docking_instance = DockingStation.new
    expect(docking_instance).to respond_to(:release_bike)
  end
=end

  it { is_expected.to respond_to :release_bike}

end
