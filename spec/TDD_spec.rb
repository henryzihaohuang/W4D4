#Remove dups

require "tdd_projects"

describe "#my_uniq" do

    it 'should take in an array as an argument.' do
        expect { my_uniq([1,2,2,3,3,3,3]) }.not_to raise_error
    end
    it 'should take in elements and return only unique elements in a new array.' do
        expect(my_uniq([1,2,2,3,3,3,3])).to eq([1,2,2,3,3,3,3].uniq)
    end

    

end

describe "Array" do
    let(:array) { Array.new([-1, 0, 2, -2, 1])}

    describe "#two_sum" do
        it 'should return all pairs of positions where the elements at those positions sum to zero.' do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

end

describe "#my_transpose" do

    subject(:rows) { [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }
    let(:cols) { [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ] }

    it 'should accept an array as an argument.' do
        expect { my_transpose([[1,2,0],[2,3,0],[3,0,3]]) }.not_to raise_error
    end

    it 'should change rows to columns.' do
        expect(my_transpose(rows)).to eq(cols)
    end

end
