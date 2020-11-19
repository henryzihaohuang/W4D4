#Remove dups

require "tdd_projects"

describe "#my_uniq" do

    it 'should take in an array as an argument' do
        expect(my_uniq([1,2,2,3,3,3,3])).not_to raise_error(ArgumentError)
    end
    it 'should take in elements and return only unique elements in a new array' do
        expect(my_uniq([1,2,2,3,3,3,3])).to eq([1,2,2,3,3,3,3].uniq)
    end

end


