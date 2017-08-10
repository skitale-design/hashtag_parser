require 'rspec'
require_relative '../lib/hashtag_parser'

describe HashtagParser do
  it 'should OK for: Проверка поиска русских #хештегов' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска русских #хештегов')).to eq ['#хештегов']
  end

  it 'should OK for: Проверка поиска русских #hashtags' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска русских #hashtags')).to eq ['#hashtags']
  end

  it 'should OK for: Проверка поиска #нескольких #hashtags' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска #нескольких #hashtags')).to eq ['#нескольких', '#hashtags']
  end


  it 'should OK for: Проверка #прер ывания #hash,tags #do.t #вопро?с #воскли!цание' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска #прер ывания #hash,tags #do.t #вопро?с #воскли!цание')).to eq ['#прер', '#hash', '#do', '#вопро', '#воскли']
  end


  it 'should OK for: Проверка #мину-сов' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска #мину-сов')).to eq ['#мину-сов']
  end


  it 'should OK for: Проверка #знака_подчеркивания' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска #знака_подчеркивания')).to eq ['#знака_подчеркивания']
  end

  it 'should OK for: Проверка #цифр123' do
    expect(HashtagParser.get_all_hashtags_from('Проверка поиска #цифр123')).to eq ['#цифр123']
  end


end
