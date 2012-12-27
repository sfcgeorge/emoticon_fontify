module EmoticonFontify
  module EmoticonHelper
    def emoticon_fontify(content)
      h(content).to_str.gsub(/(#{EmoticonFontify.emoticons.join('|')})/) do |match|
      '<span class="' + EmoticonFontify.emoticon_to_class(match) + '">' + match + '</span>'
    end.html_safe if content.present?
    end
  end
end