class PictureSerializer < ActiveModel::Serializer
  attributes :id, :user, :url, :owned

  def owned
    scope == object.user
  end
end
