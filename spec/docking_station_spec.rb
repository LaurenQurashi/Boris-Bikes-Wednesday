require 'docking_station'
require 'bike'

describe DockingStation do
  before(:each) do
    @bike1 = Bike.new
    @docking_station = DockingStation.new
  end

  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike when we call release bike' do
    @docking_station.dock_bike(@bike1)
    expect(@docking_station.release_bike).to be_a(Bike)
    expect(@bike1).to respond_to(:working?)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'adds a bike to the docking station when we call dock_bike' do
    @docking_station.dock_bike(@bike1)
    expect(@docking_station.bike_rack).to eq [@bike1]
  end

  it 'raises an error if there are no bikes to release' do
    expect { @docking_station.release_bike }.to raise_error("No bikes!")
  end

  it 'raises an error if the bike_rack is full' do
    bike2 = Bike.new
    @docking_station.dock_bike(@bike1)
    expect { @docking_station.dock_bike(bike2) }.to raise_error("Bike Rack is full!")
  end

end
