require 'spec_helper'

feature "user signs in" do

  let(:user) {
    FactoryBot.create(:user,
      name: 'Jose',
      token: '3ffc6c4ee03a7fa5fa12b50af8bbdffc089957f6',
      github_id: 1
    )
  }

  before {
    visit root_url
  }

  it "gets the user to his/her profile page" do
    expect(User).to receive(:find_or_create_from).and_return(user)
    click_link 'Login GitHub'
    expect(page).to have_content "My Repos, Help Wanted?"
  end
end
