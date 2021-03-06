require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'should validate content length' do
      comment = build(:comment_empty)
      comment.validate
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end

    it 'should accept valid concent' do
      comment = build(:comment, post: create(:post))
      comment.validate
      expect(comment.valid?).to be true
    end
  end
end
