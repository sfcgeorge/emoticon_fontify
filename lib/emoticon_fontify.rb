require "emoticon_fontify/engine"

module EmoticonFontify
  def self.emoticons_to_classes
    @emoticons_to_classes ||= {
      [':)', ':-)'] => 'icon-emo-happy',
      [';)', ';-)'] => 'icon-emo-wink',
      [':(', ':-('] => 'icon-emo-unhappy',
      [':|', ':-|'] => 'icon-emo-sleep',
      ['>:)', '>:-)', '}:)', '}:-)'] => 'icon-emo-devil',
      [':O', ':-O', ':0', ':-0'] => 'icon-emo-surprised',
      [':P', ':-P'] => 'icon-emo-tongue',
      [':)~D', ':-)~D'] => 'icon-emo-coffee',
      ['B)', 'B-)'] => 'icon-emo-sunglasses',
      [':/', ':-/', ':\\', ':-\\'] => 'icon-emo-displeased',
      [':D', ':-D'] => 'icon-emo-grin',
      ['>(', '>-('] => 'icon-emo-angry',
      ['O:)', 'O:-)', '0:)', '0:-)'] => 'icon-emo-saint',
      [';(', ';-(', ":'(", ":'-("] => 'icon-emo-cry',
      ['8)', '8-)'] => 'icon-emo-laugh'
    }
  end

  def self.emoticons
    emoticons_to_classes.keys.flatten
  end

  def self.emoticon_to_class(emote)
    emote_variations = emoticons_to_classes.keys.select do |emotes|
      emotes.include? emote
    end

    emoticons_to_classes[emote_variations.flatten]
  end
end