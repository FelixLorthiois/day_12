require_relative '../lib/01_day_trader'

describe "day_trader" do
  it "finds the best buy day and sell day to maximize the gain" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end

  it "works even if there is only one day" do
    expect(day_trader([8])).to eq([0,0])
  end
end