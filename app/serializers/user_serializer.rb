class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :trackers

  def trackers
    object.trackers.map do |tracker|
      {
        id: tracker.id,
        blood_pressure: tracker.blood_pressure,
        blood_glucose: tracker.blood_glucose
      }
    end
  end
end
