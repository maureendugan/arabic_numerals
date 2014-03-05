require ('rspec')
require ('arabic_numbers')

describe('arabic_numbers') do
  it('writes 2 for II') do
    arabic_numbers("II").should(eq(2))
  end

  it('writes 8 for VIII') do
    arabic_numbers("VIII").should(eq(8))
  end

  it('writes 78 for LXXVIII') do
    arabic_numbers("LXXVIII").should(eq(78))
  end

  it('writes 2758 for MMDCCLVIII') do
    arabic_numbers("MMDCCLVIII").should(eq(2758))
  end

  it('writes 2473 for MMCDLXXIII') do
    arabic_numbers("MMCDLXXIII").should(eq(2473))
  end

  it('correctly writes a number with a 4 or 9 in it') do
    arabic_numbers("XIV").should(eq(14))
  end
end
