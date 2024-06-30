module Api
  module V1
    class Api::V1::UsersController < ApplicationController
      def index
        users = User.all
        render json: { users: users }, status: :ok
      end

      def show
        email = params[:id] == 'current' ? params[:email] : User.find(params[:id]).email

        user = User.find_by(email: email)

        if user
          render json: { user: user }, status: :ok
        else
          render json: { error: "ユーザーが見つかりません" }, status: :not_found
        end
      rescue StandardError => e
        render json: { error: e.message }, status: :internal_server_error
      end

      def create
        user = User.find_by(email: params[:email])

        if user
          user.update(provider: params[:provider], uid: params[:uid])
        else
          user = User.create(provider: params[:provider], uid: params[:uid], name: params[:name], email: params[:email])
        end

        if user.persisted?
          render json: { user: user }, status: :ok
        else
          render json: { error: "ログインに失敗しました", details: user.errors.full_messages}, status: :unprocessable_entity
        end
      rescue StandardError => e
        render json: { error: e.message }, status: :internal_server_error
      end

    end
  end
end
