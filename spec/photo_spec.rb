require 'rails_helper'

describe Photo do
  it { should validate_presence_of :photographer}
  it { should validate_presence_of :datetaken}
  it { should validate_presence_of :camera}
  it { should validate_presence_of :details}
end

FactoryGirl.define do
  factory(:photo) do
    photographer('Andrew')
  end
end
