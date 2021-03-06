require 'rails_helper'

describe Movie do

  describe 'associations' do
    it { should have_many :analyses }
    it { should have_many :tweets }
  end

  describe 'validations' do
    it { validate_presence_of :title }
    it { validate_uniqueness_of :title }
  end

  describe '.analyze_all' do
    before { 5.times{ FactoryGirl.create(:movie) } }

    it 'analyzes all the movies' do
      expect(Sentwix).to receive(:analyze_movie).exactly(Movie.all.count).times
      Movie.analyze_all
    end
  end
end
