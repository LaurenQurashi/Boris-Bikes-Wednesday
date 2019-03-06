require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike when we call release bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a(Bike)
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

end
