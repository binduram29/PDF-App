require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :number => "MyString",
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :shopify_order_id => 1,
      :total => 1.5,
      :line_item_count => 1,
      :financial_status => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[number]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[first_name]"

      assert_select "input[name=?]", "order[last_name]"

      assert_select "input[name=?]", "order[shopify_order_id]"

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[line_item_count]"

      assert_select "input[name=?]", "order[financial_status]"
    end
  end
end
