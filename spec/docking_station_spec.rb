require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  let(:docking_instance) {DockingStation.new}

  it { is_expected.to respond_to :bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      docking_instance.dock(bike)
      #release docked bike
      expect(docking_instance.release_bike).to eq bike
    end

    it 'raises error when no bikes are available' do
      expect{ docking_instance.release_bike }.to raise_error "No bikes, no worries"
    end
  end

  it { is_expected.to respond_to :dock}

  # it 'should take a bike as an argument and allow access to the bike using the .bike method' do
  #   #docking_instance = DockingStation.new
  #   bike_instance = Bike.new
  #   # docking_instance.dock(bike_instance)
  #   # expect(docking_instance.bike).to eq bike_instance
  #   expect(docking_instance.dock(bike_instance)).to eq bike_instance
  # end

  # it 'should flag up if the docking station is empty' do
  #   expect(docking_instance.dock(bike)).to eq nil 
  # end
end
