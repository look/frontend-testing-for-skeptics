require 'spec_helper'

describe 'xss', :js => true do
  it "escapes JavaScript" do
    visit xss_path
    find("h1").should have_content("Hello World! <script>window.xss = true;</script>")
    page.evaluate_script('window.xss').should_not be_true
  end
end
