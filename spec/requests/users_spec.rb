require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #index" do
    it "リクエストが成功する" do
      create_list(:user, 3)
      get(users_path)
      expect(response).to have_http_status(:ok)
    end
    it "name が表示されている" do
      user1 = create(:user)
      user2 = create(:user)
      user3 = create(:user)
      get(users_path)
      expect(response.body).to include(user1.name, user2.name, user3.name)
    end
  end
end
