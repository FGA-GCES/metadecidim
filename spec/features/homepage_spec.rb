# frozen_string_literal: true

require 'rails_helper'

describe 'Visit the home page', type: :system, perform_enqueued: true do
  let(:organization) { create :organization }

  before do
    switch_to_host(organization.host)
  end

  it 'renders the home page' do
    visit decidim.root_path
    # By default there isn't any Content Block enabled, so we search a content from the header
    expect(page).to have_content('Search')
  end
end
