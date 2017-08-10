class HashtagParser
  def initialize
  end

  def self.get_all_hashtags_from(text)
    text.scan(/#[[[:alnum:]]\_\-]+/)
  end
end
