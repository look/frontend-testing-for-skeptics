require 'spec_helper'

describe 'country autocomplete', :js => true do
  context 'with match' do
    it 'shows autocompletions and redirects to the selected country' do
      visit root_path
      fill_in "country", :with => 'norw'
      # HACK: click away to trigger the display of results
      find("body").click 

      find('.tt-suggestion').click

      current_path.should == country_path('NO')
    end
  end

  context 'with no match' do
    it 'shows no results' do
      visit root_path
      fill_in "country", :with => 'zzz'

      # Sometimes it may be easier to use JavaScript directly!
      page.evaluate_script('$(".tt-suggestions").children().size() == 0').should be_true
    end
  end
end
