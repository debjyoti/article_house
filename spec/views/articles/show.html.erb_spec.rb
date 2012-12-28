require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :heading => "Heading",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Heading/)
    rendered.should match(/MyText/)
  end
end
