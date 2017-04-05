require "rails_helper"

RSpec.describe BmiController, type: :controller do
  it { should use_before_action(:authenticate_user!) }
  #let(:user) { FactoryGirl.create(:user)  }
  describe 'GET index' do
    before { get :index }
    it "is a succes" do
      expect(response).to have_http_status(:ok)

    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end


#RSpec.feature "add a body mass index" do

  #let(:user) { FactoryGirl.create(:user) }

  #scenario "get category" do
    #login_user(user)
    #visit new_bmi_path
    #fill_in "bmi_mass", with: "90"
    #fill_in "bmi_height", with: "10"
    #click_on("Get your category and BMI")
    #expect(page).to have_content("Very severely underweight")
  #end
#end
