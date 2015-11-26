require 'spec_helper'

describe 'Anagrammer integration' do

  include CliIntegrationSpecHelpers

  subject(:command) { run 'spec/fixtures/wordlist.txt' }

  let(:expected_anagrams) do
    File.read('spec/fixtures/expected_anagrams.txt')
  end

  it 'outputs the expected anagrams' do
    command
    expect(return_output).to eq(expected_anagrams)
  end

  it 'returns success exit status' do
    command
    expect(return_code).to eq(0)
  end

end
