require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#valid?' do
    let(:post) { Post.new }

    it 'should not valid after initialization' do
      expect(post.valid?).to be_falsey
    end

    it 'should valid with only title and description' do
      post.title = 'sample title'
      post.description = 'sample description'

      expect(post.valid?).to be_truthy
    end
  end

  describe '#save' do
    let(:post) { build(:post) }

    it 'should save the record into db' do
      expect(post.save).to be_truthy
      expect(Post.count).to be_eql 1
    end
  end
end
