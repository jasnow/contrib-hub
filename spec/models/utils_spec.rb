require 'spec_helper'

describe Utils do
  include Utils

  it "should get all languages" do
    FactoryBot.create(:repo, language: "Ruby")
    FactoryBot.create(:repo, language: "")
    FactoryBot.create(:repo, language: nil)

    expect(get_all_languages).to eq(["Ruby"])
  end

end
