class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :email, :role

  def role
    object.role.name
  end
end
