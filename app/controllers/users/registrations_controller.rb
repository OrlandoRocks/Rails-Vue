class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      message: 'Se armo el guiso ya te logueaste :D',
      user: current_user
    }, status: :ok
  end

  def register_failed
    render json: { message: 'Algo valio shit :(' }, status: :unprocessable_entity
  end
end

