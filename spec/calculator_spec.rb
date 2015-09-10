require "calculator"

describe Calculator do

  let(:calc){ Calculator.new }

  describe "#add" do

    it "return an integer" do
      expect(Calculator.new.add(1,1)).to be_an(Integer)
    end

    it "return the sum of its two arguments" do
      expect(Calculator.new.add(1,1)).to eq(2)
    end

    context "when I add two numbers" do
      it "returns the correct sum regardless of order" do
        expect(calc.add(1,2)).to eq(calc.add(2,1))
        expect(calc.add(1,2)).to eq(3)
      end
    end

    context "when I add zero to an integer" do
      it "returns the integer" do
        expect(calc.add(5,0)).to eq(5)
      end
    end

    context "when I add an integer to itself" do
      it "should double the integer" do
        expect(calc.add(5,5)).to eq(5*2)
      end
    end

    context "when I add more than two numbers" do
      it "returns the correct sum" do
        expect(calc.add(1,2,3)).to eq(6)
        expect(calc.add(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)).to eq(120)
      end
    end
  end

    describe "#subtract" do

    it "return an integer" do
      expect(Calculator.new.subtract(5,4)).to be_an(Integer)
    end

    it "return the difference of its two arguments" do
      expect(Calculator.new.subtract(4,2)).to eq(2)
    end

    context "when I subtract two numbers" do
      it "returns the correct result dependent of order" do
        expect(calc.subtract(1,2)).to eq(-1)
        expect(calc.subtract(2,1)).to eq(1)
      end
    end

    context "when I subtract zero from an integer" do
      it "returns the integer" do
        expect(calc.subtract(5,0)).to eq(5)
      end
    end

    context "when I subtract an integer from itself" do
      it "should equal zero" do
        expect(calc.subtract(5,5)).to eq(0)
      end
    end

    context "when I subtract more than two numbers" do
      it "returns the correct result" do
        expect(calc.subtract(10,2,3)).to eq(5)
        expect(calc.subtract(100,2,3,4,5,6,7,8,9,10,11,12,13)).to eq(10)
      end
    end
  end
  
end
