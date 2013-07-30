require 'spec_helper'

describe CommentsController do

  # let(:comment) {FactoryGirl.create(:comment) }

  # describe '#new' do

  #   before :each do
  #   get :new
  #   end

  #   it 'should render new.html' do
  #   expect(response).to render_template :new
  #   end

# end

  let(:link) { FactoryGirl.create(:link) }

  describe '#create' do
    before :each do
      @comment_params = {
        text: 'text',
        link_id: link.id
      }
    end

    it 'should create a new comment' do
      expect {
        post :create, comment: @comment_params
        }.to change(Comment, :count).by(1)

    end
end

describe '#edit' do

  it 'should find by id' do
    get :edit, id: comment.id
    expect(assigns(:comment)).to eq(comment)
  end

end

describe '#destroy' do

  it 'should delete a comment' do
    comment
    expect{
      delete :destroy, id: comment.id
    }.to change(Comment, :count).by(-1)
  end
end


end
