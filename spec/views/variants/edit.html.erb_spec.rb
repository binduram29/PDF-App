require 'rails_helper'

RSpec.describe "variants/edit", type: :view do
  before(:each) do
    @variant = assign(:variant, Variant.create!(
      :product_id => 1,
      :shopify_variant_id => 1,
      :option1 => "MyString",
      :option2 => "MyString",
      :option3 => "MyString",
      :sku => "MyString",
      :barcode => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit variant form" do
    render

    assert_select "form[action=?][method=?]", variant_path(@variant), "post" do

      assert_select "input[name=?]", "variant[product_id]"

      assert_select "input[name=?]", "variant[shopify_variant_id]"

      assert_select "input[name=?]", "variant[option1]"

      assert_select "input[name=?]", "variant[option2]"

      assert_select "input[name=?]", "variant[option3]"

      assert_select "input[name=?]", "variant[sku]"

      assert_select "input[name=?]", "variant[barcode]"

      assert_select "input[name=?]", "variant[price]"
    end
  end
end
