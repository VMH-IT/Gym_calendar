class UsersSerializer < ActiveModel::Serializer
  attributes  :id,
              :email,
              :fname,
              :lname,
              :weight,
              :height,
              :phone,
              :age,
              :gender
  def gender
    if object.gender == 0
      "female"
    elsif object.gender == 1
      "male"
    elsif object.gender == 2
      "other"
    end
  end
end
