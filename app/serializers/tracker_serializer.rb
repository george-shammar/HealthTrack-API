class TrackerSerializer < ActiveModel::Serializer
  attributes :id, :blood_pressure, :blood_glucose, :user

  def user
    {
      id: object.user.id,
      username: object.user.username
    }
  end
end
