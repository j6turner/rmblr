require 'rails_helper'

describe Ramble do
  it {should belong_to :user}
  it {should validate_presence_of :content}
  it {should validate_presence_of :time}
end
