class OrgansController < ApplicationController
  def organs_action
    @organs = Organ.all
    render 'organs_page.html.erb'
  end
end
