require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  let(:docking_instance) {DockingStation.new}
=begin
  it 'responds to the method release_bike' do
    docking_instance = DockingStation.new
    expect(docking_instance).to respond_to(:release_bike)
  end
=end

  it { is_expected.to respond_to :release_bike}

  it 'gets a bike and expects bike to be working' do
    #docking_instance = DockingStation.new
    expect(docking_instance.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to :dock}

  it 'take a bike as an argument and allow access to the bike using the .bike method' do
    #docking_instance = DockingStation.new
    bike_instance = Bike.new
    docking_instance.dock(bike_instance)
    expect(docking_instance.bike).to eq bike_instance
  end


end
