require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "category should be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end











  # test "should create category" do
  #   assert_difference('Category.count') do
  #     post categories_url, params: { category: {  } }
  #   end
  test "should create category" do
    assert_difference('Category.count', 1) do
      post categories_url, params: { category: { name: "Travel" } }
    end

  #   assert_redirected_to category_url(Category.last)
  # end
    assert_redirected_to category_url(Category.last)
  end

  # test "should show category" do
  #   get category_url(@category)
  # end

end