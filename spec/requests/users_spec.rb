require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #index" do
    it "リクエストが成功する" do
      create_list(:user, 3)
      get(users_path)
      expect(response).to have_http_status(:ok)
    end
  end
end
