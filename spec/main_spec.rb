require_relative '../main'

RSpec.describe 'caesar_cipher' do
  it 'ciphers a lowercase word properly' do
    expect(caesar_cipher('word', 1)).to eq('xpse')
  end

  it 'ciphers a uppercase word properly' do
    expect(caesar_cipher('RUBYPROJECT', 3)).to eq('UXEBSURMHFW')
  end

  it 'ciphers an empty string properly' do
    expect(caesar_cipher('', 1)).to eq('')
  end

  it 'ciphers a string with shift value 0 properly' do
    expect(caesar_cipher('Large Word', 0)).to eq('Large Word')
  end

  it 'ciphers a string with random uppercase & lowercase characters properly' do
    expect(caesar_cipher('XyshfjruJhUIKAVHilkmqpe', 8)).to eq('FgapnrzcRpCQSIDPqtsuyxm')
  end

  it 'ciphers a string with special characters properly' do
    expect(caesar_cipher(":)Hello, World    nah I'ma do my own thing!!!",
                         4)).to eq(":)Lipps, Asvph    rel M'qe hs qc sar xlmrk!!!")
  end

  it 'ciphers a string with large shift value properly' do
    expect(caesar_cipher('Hello', 100)).to eq('Dahhk')
  end
end
