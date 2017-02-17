require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should belong_to :user }
  it { should validate_presence_of :user_id }
end
