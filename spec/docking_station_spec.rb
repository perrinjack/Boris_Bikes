require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  let(:docking_instance) {DockingStation.new}

  it { is_expected.to respond_to :bikes}

  describe '#release_bike' do
    it 'releases a bike' do
      bikes = Bike.new
      docking_instance.dock(bikes)
      #release docked bike
      expect(docking_instance.release_bike).to eq bikes
    end

    it 'raises error when no bikes are available' do
      expect{ docking_instance.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock' do
  it { is_expected.to respond_to :dock}

  it 'raises error when no spaces are available' do
    20.times {docking_instance.dock Bike.new}
    expect{ docking_instance.dock Bike.new }.to raise_error "No spaces to dock"
  end
end
  

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
