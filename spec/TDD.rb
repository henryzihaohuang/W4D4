#Remove dups

require "tdd_projects"

describe my_uniq do

    array = [1,2,2,3,3,3,3]

    it 'should take in elements and return only unique elements in a new array' do
        allow(:my_uniq).to receive(array)
        expect(:my_uniq(array)).to eq(array.uniq)
    end

end
