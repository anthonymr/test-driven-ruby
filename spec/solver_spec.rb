require_relative '../bin/solver'

describe Solver do
  solver = Solver.new

  context 'When testing the factorial method' do
    it 'should return 1 when n = 0' do
      expect(solver.factorial(0)).to eq 1
    end
    it 'should return 2 when n = 2' do
      expect(solver.factorial(2)).to eq 2
    end
    it 'should return 6 when n = 3' do
      expect(solver.factorial(3)).to eq 6
    end
    it 'should raise an error when n = -1' do
      expect { solver.factorial(-1) }.to raise_error ArgumentError
    end
    it 'should raise an error when n = -2' do
      expect { solver.factorial(-2) }.to raise_error ArgumentError
    end
  end

  context 'When testing the reverse method' do
    it 'should return "olleh" when word = "hello"' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end
    it 'should return "dlrow" when word = "world"' do
      expect(solver.reverse('world')).to eq 'dlrow'
    end
    it 'should return "gnirts" when word = "string"' do
      expect(solver.reverse('string')).to eq 'gnirts'
    end
  end

  context 'When testing the fizzbuzz method' do
    it 'should return "fizz" when n = 3' do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return "buzz" when n = 5' do
      expect(solver.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return "fizzbuzz" when n = 15' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'should return "1" when n = 1' do
      expect(solver.fizzbuzz(1)).to eq '1'
    end
    it 'should return "7" when n = 7' do
      expect(solver.fizzbuzz(7)).to eq '7'
    end
  end
end
