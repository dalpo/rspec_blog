require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, create_list(:post, 2))
  end

  it "renders a list of posts" do
    render
  end
end
