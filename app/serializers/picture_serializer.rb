class PictureSerializer < ActiveModel::Serializer
  attributes :id, :url, :owned, :user_id

  def owned
    scope == object.user
  end
end
