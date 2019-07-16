require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString"
    ))
  end

  it "renders new post form" do

    render
    # binding.pry
    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"
    end
  end
end

# <form class="new_post" id="new_post" action="/posts" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="TkWXwU1875iCqKtYw7apX6L6ceQHrwdtpEh9r+hbnvbAi2VSI3Fn/TaM7ALsuX9JN3omhYgCcENmSBVvPY8IQg==">
#
#   <div class="field">
#     <label for="post_title">Title</label>
#     <input type="text" name="post[title]" id="post_title">
#   </div>
#
#   <div class="field">
#     <label for="post_description">Description</label>
#     <textarea name="post[description]" id="post_description"></textarea>
#   </div>
#
#   <div class="actions">
#     <input type="submit" name="commit" value="Create Post" data-disable-with="Create Post">
#   </div>
# </form>
