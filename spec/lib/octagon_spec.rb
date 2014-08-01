require 'rspec'
require './lib/octagon'
require './lib/shape'

describe Octagon do

  it 'should be an octogon' do
    expect(subject).to be_a(Octagon)
  end

  it 'should be a shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#length' do
    it 'should return the side length' do
      expected_side = 4
      actual_side = 4
      expect(subject.length(expected_side)).to equal(actual_side)
    end
  end

  describe '#perimeter' do
    it 'should return the perimeter length' do
      side_length = 4
      expected_perimeter = 8 * side_length
      expect(subject.perimeter(side_length)).to equal(expected_perimeter)
    end
  end

  describe '#area' do
    it 'should return the octagon area' do
      side_length = 4
      expected_area = 2 * (1 + Math.sqrt(2)) * side_length**2
      expect(subject.area(side_length)).to equal(expected_area)
    end
  end
end
