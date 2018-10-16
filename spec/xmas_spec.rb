require 'xmas'

describe '#days_until_xmas' do
  it 'returns an integer' do
    expect(days_until_xmas.class).to eq(Integer)
  end

  it 'returns 0 if the date is xmas day' do
    expect(days_until_xmas(Date.new(2018, 12, 25))).to eq(0)
  end

  it 'returns the right number of days' do
    expect(days_until_xmas(Date.new(2020, 10, 10))).to eq(76)
  end

  it 'returns days until xmas of next year if the date is after xmas' do
    expect(days_until_xmas(Date.new(2018, 12, 27))).to eq(363)
  end
end
