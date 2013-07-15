class PagesController < ApplicationController
  def xss
    @title = 'Hello World! <script>window.xss = true;</script>'.html_safe
  end
end
