require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #index" do
    subject { get(users_path) }
    context "ユーザーが存在するとき" do
      before { create_list(:user, 3) }
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end

      it "name が表示されている" do
        subject
        expect(response.body).to include(*User.pluck(:name))
      end
    end
  end

  describe "GET #show" do
    context "ユーザーが存在するとき" do
      it "リクエストが成功する" do
        user = create(:user)
        get(user_path(user.id))
        expect(response).to have_http_status(:ok)
      end

      it "name が表示されている" do
      end

      it "age が表示されている" do
      end

      it "email が表示されている" do
      end
    end
  end
end
