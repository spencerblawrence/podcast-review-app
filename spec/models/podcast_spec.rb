require 'spec_helper'

describe Podcast do
  it { should have_many :reviews }

  it { should have_valid(:name).when("Serial") }
  it { should_not have_valid(:name).when(nil, "") }

  it { should have_valid(:publisher).when("WBEZ") }
  it { should_not have_valid(:publisher).when(nil, "") }

  it { should have_valid(:description).when("Serial is an investigative journalism podcast hosted by Sarah Koenig, narrating a nonfiction story over multiple episodes.") }
  it { should_not have_valid(:description).when(nil, "") }

  it { should have_valid(:link).when("https://serialpodcast.org/") }
  it { should_not have_valid(:link).when(nil, "") }
  it { should_not have_valid(:link).when("serialpodcast.org") }
end