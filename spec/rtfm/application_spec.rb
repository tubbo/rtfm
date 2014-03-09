require 'spec_helper'
require 'rtfm/application'
require 'rack/test'

module RTFM
  describe Application do
    include Rack::Test::Methods

    let(:app) { RTFM::Application }

    context "when rendering the index page" do
      before { get '/' }
      let(:response) { last_response }

      it "responds successfully" do
        expect(response.status).to eq(200)
      end

      it "renders a list of applications" do
        expect(response.body).to_not \
          match(/There are no apps to display/)
      end
    end
  end
end
