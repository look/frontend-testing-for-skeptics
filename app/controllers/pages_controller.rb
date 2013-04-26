class PagesController < ApplicationController
  def xss
    @title = 'Hello World! <script>window.xss = true;</script>'
  end
end
