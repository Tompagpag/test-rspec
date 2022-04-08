require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do
    it 'should increment comments_count' do
      post = Post.new(name: 'salut')
      post.comments << Comment.new(content: 'AZERTYUOIPGLGR')
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
    it 'should persist a post' do
      Post.create(name: 'test')
      expect(Post.count).to eq(1)
    end
  end
end
