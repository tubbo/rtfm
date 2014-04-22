require 'spec_helper'

feature "index" do
  before { visit '/' }

  it "renders the title" do
    expect(page).to have_content "TelVue Documentation Server"
  end

  it "renders the opening paragraph as markdown" do
    expect(page).to have_content "YARD documentation"
  end

  it "renders a list of links to each documentation folder" do
    expect(page).to have_content "example"
  end
end
