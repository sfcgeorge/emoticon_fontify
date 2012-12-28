require "emoticon_fontify/engine"

module EmoticonFontify
  def self.emoticons_to_classes
    @emoticons_to_classes ||= {
      [':)~D', ':-)~D'] => 'icon-emo-coffee',
      [':)', ':-)'] => 'icon-emo-happy',
      [';)', ';-)'] => 'icon-emo-wink',
      [':(', ':-('] => 'icon-emo-unhappy',
      [':|', ':-|'] => 'icon-emo-sleep',
      ['}:)', '}:-)', '3:)', '3:-)'] => 'icon-emo-devil',
      [':O', ':-O', ':0', ':-0'] => 'icon-emo-surprised',
      [':P', ':-P'] => 'icon-emo-tongue',
      ['B)', 'B-)'] => 'icon-emo-sunglasses',
      [':/', ':-/', ':\\', ':-\\'] => 'icon-emo-displeased',
      [':D', ':-D'] => 'icon-emo-grin',
      [':@', ':-@', 'X-(', 'X('] => 'icon-emo-angry',
      ['O:)', 'O:-)', '0:)', '0:-)'] => 'icon-emo-saint',
      [';(', ';-('] => 'icon-emo-cry',
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

  def self.emoticon_fontify(content)
    escaped_emoticons = emoticons.map{ |e| Regexp.escape(e) }
    content.to_str.gsub(/(#{escaped_emoticons.join('|')})/) do |match|
      '<span class="' + emoticon_to_class(match) + '">' + match + '</span>'
    end.html_safe if content.present?
  end
end