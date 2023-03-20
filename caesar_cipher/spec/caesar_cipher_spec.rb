# frozen_string_literal: true

require './lib/caesar_cipher'

describe 'Caesar Cipher' do
  context 'Hello!' do
    it 'no shifting on key 0' do
      expect(caesar_cipher('Hello!', 0)).to eql('Hello!')
    end

    it 'Shift factor 1' do
      expect(caesar_cipher('Hello!', 1)).to eql('Ifmmp!')
    end

    it 'Shift factor 8' do
      expect(caesar_cipher('Hello!', 8)).to eql('Pmttw!')
    end

    it 'Shift factor 14' do
      expect(caesar_cipher('Hello!', 14)).to eql('Vszzc!')
    end
  end

  context 'What a string!' do
    it 'no shifting on key 0' do
      expect(caesar_cipher('What a string!', 0)).to eql('What a string!')
    end

    it 'Shift factor 10' do
      expect(caesar_cipher('What a string!', 10)).to eql('Grkd k cdbsxq!')
    end

    it 'Shift factor 20' do
      expect(caesar_cipher('What a string!', 20)).to eql('Qbun u mnlcha!')
    end

    it 'Shift factor 25' do
      expect(caesar_cipher('What a string!', 25)).to eql('Vgzs z rsqhmf!')
    end
  end

  context 'Wow, so. many&symbols!(=)' do
    it 'no shifting on key 0' do
      expect(caesar_cipher('Wow, so. many&symbols!(=)', 0)).to eql('Wow, so. many&symbols!(=)')
    end

    it 'Shift factor 10' do
      expect(caesar_cipher('Wow, so. many&symbols!(=)', 10)).to eql('Gyg, cy. wkxi&ciwlyvc!(=)')
    end
  end
end
