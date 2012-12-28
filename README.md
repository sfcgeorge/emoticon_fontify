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
*= 'emoticon_fontify/emoticons'
```

Finally use the helper to fontify emoticons in a string. This would allow fontifying content such as: `Why hello there good sir :O could I interest you in a cup of coffee? :)~D`

```ruby
require 'emoticon_fontify'

EmoticonFontify.emoticon_fontify(h(content))
```


## List Of Emoticons

:) :-)
;) ;-)
:( :-(
:| :-|
}:) }:-) 3:) 3:-)
:O :-O :0 :-0
:P :-P
:)~D :-)~D
B) B-)
:/ :-/ :\ :-\
:D :-D
:@ :-@ X( X-(
O:) O:-) 0:) 0:-)
;( ;-(
8) 8-)

An example of how the emoticon's look when converted to the font glyphs can be seen on the [http://sfcgeorge.github.com/emoticon_fontify/demo.html](demo page).