require "rails_helper"

RSpec.describe BmiController, type: :controller do
  it { should use_before_action(:authenticate_user!) }

  describe 'GET index' do
    before { get :index }
    it "is a succes" do
      expect(response).to have_http_status(:ok)

    end
  end
  #it "renders 'index' template" do
    #expect(response).to render_template('index')
  #end

end


