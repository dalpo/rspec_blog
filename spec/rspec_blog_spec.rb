require 'rails_helper'

RSpec.describe 'The truth' do
  it 'should be truthy' do
    expect(true).to be_truthy
    expect(true).to be_eql true
  end

  it 'should not be falsey' do
    expect(true).to_not be_falsey
    expect(true).to_not be_eql false
  end
end
