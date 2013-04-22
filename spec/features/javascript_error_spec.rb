require 'spec_helper'

describe 'JavaScript errors', :js => true do
  context 'home page' do
    it 'does not raise a JavaScript error' do
      visit root_path
      fill_in "country", :with => 'Uni'
    end
  end
end
