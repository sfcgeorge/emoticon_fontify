# Emoticon Fontify

Use helper method to convert text emoticons to unicode characters for use with the font included in asset pipeline.

See the LICENSE for copyright information.


## Installation

Add `emoticon_fontify` to you Gemfile and bundle.

``` ruby
gem 'emoticon_fontify'
```

Then include the stylesheet in your `application.css` manifest.

```
//= 'emoticon_fontify/emoticons.css'
```

Finally use the helper to fontify emoticons in a string. This would allow fontifying content such as: `Why hello there good sir :O could I interest you in a cup of coffee? :)~D`

```ruby
require EmoticonFontify::EmoticonHelper

emoticon_fontify(content)
```


## List Of Emoticons

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