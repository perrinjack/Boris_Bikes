require 'docking_station.rb'
#require 'bike.rb'

describe DockingStation do
  let(:docking_instance) {DockingStation.new}

  describe '#release_bike' do
  
    it 'responds to #release_bike' do
    expect(docking_instance).to respond_to :release_bike
    end

    it 'returns an instance of the Bike class' do
      docking_instance.dock(Bike.new)
      expect(docking_instance.release_bike).to be_instance_of(Bike)
    end

    it 'raises error when no bikes are available' do
      expect{ docking_instance.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock' do

    it 'responds to #dock' do
    expect(docking_instance).to respond_to :dock
    end

    it 'raises error when no spaces are available' do
      docking_instance.capacity.times {docking_instance.dock(Bike.new)}
      expect{ docking_instance.dock(Bike.new) }.to raise_error "No spaces to dock"
    end

    #xit 'has a default capacity' do
     # expect(docking_instance.capacity).to eq DockingStation::DEFAULT_CAPACITY
    #end
  end

  describe 'docking initialization' do

    it 'defaults to capacity' do
      DockingStation::DEFAULT_CAPACITY.times { docking_instance.dock(Bike.new)}
      expect{ docking_instance.dock(Bike.new) }.to raise_error "No spaces to dock"
    end
  end

end
