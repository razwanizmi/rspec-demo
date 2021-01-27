require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    it 'saves into database with valid parameters' do
      first_name = 'Jane'
      last_name = 'Doe'
      email = 'jane.doe@example.com'

      user =
        User.create(first_name: first_name, last_name: last_name, email: email)

      expect(user.id).to be_present
      expect(user.first_name).to eq(first_name)
      expect(user.last_name).to eq(last_name)
      expect(user.email).to eq(email)
    end
  end
end
