require 'rails_helper'

describe Sentwix::TwitterWrapper, :vcr do

  subject { Sentwix::TwitterWrapper.new }

  describe '#search' do
    it 'returns Twitter::SearchResults when topic given' do
      expect(subject.search('test topic')).to be_a Twitter::SearchResults
    end

    it 'returns nil when topic is nil or empty string' do
      expect(subject.search('')).to be_nil
    end
  end

  describe '#tweet' do
    it 'posts a message' do
      expect(subject.tweet("New message")).to be_a Twitter::Tweet
    end
  end

  describe '#user_timeline' do
    it 'returns an array' do
      expect(subject.user_timeline).to be_a Array 
    end

    it 'contains a Tweet object' do
      expect(subject.user_timeline).to include Twitter::Tweet
    end
  end

end
