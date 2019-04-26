# slrn

This is a fork of [slrn Usenet Newsreader](http://slrn.sourceforge.net)

So far, there are only some minor changes and one new option to set a left indentation in the
article pager. Version number has been changed to 1.0.4-unoff to indicate its forked status.

## License

* GPL V2

## Changes so far:

* align headers in article pager window. Can be configured with the `align_headers` config
  variable. Allowed values are 1-40, headers whose names are longer than the selected
  column are left untouched..
* allow a left margin in the article pager. Purely visual change, can be configured with `set 
  left_indent x` in .slrnrc
* Only add `User-Agent:` if none is supplied in the post.
* Add `format=flowed` to the Content-Type: header when the post contains
  soft-wrapped lines (ending with a whitepsace-LF sequence) AND the `send_flowed` configuration 
  variable is set to a value other than zero.
* New configuration variable: `fqdn`. This specifies the domain part for Message-ID
  generation. Only used when `midgen_override_fqdn` is also set to 1. Be careful, as some
  servers won't accept Message-IDs with „phantasy domain names”.
* New hook: `after_post_hook`. This runs after an article was posted **successfully**. It can
  be used to trigger events like posting it from a local to the upstream server (e.g. run
  fetchnews -P on a leafnode site). No parameters are passed to the hook function.
* Version string and User-Agent: header now contain compiler version and compile
  timestamp.
* added additional level of coloroization with `min_top_score` threshold and `top_score`
  color value. All articles with scores above the threshold value will be colorized with
  the `top_score` attribute.
* Added config variable `colorize_read`. If set to 1, read subjects will always be
  colorized according to scores, when `color_by_score` is set to 2 or 3.
* Changed the way articles from yourself are highlighted in the list of messages. A new
  configuration value `from_myself_pattern` has been introduced. It's a simple string
  containing all From: header values that should be considered "my own". For matches, the
  %r or %f columns will be highlighted using the `from_myself` color definition.

## Planned

* support format=flowed in the article pager. Implementing a new text wrapping engine,
  probably based on par or fmt code.
* ?

## Compile and install.

```
    ./configure --with-ssl --with-gnutls --with-uu --with-canlock
    make && make install
```

## Requirements

Development packages for libssl, libgnutls, libuu and libcanlock. All are basically optional, but
highly recommended.

On Ubuntu (currently 18.04) and most other Debian descendants, the following packages should be
sufficient to compile it..

* libssl1.0-dev
* libssl1.0.0
* libuu-dev
* libuu0
* libcanlock2
* libcanlock2-dev
* libgnutls-openssl27
* libgnutls28-dev
* libgnutls30
* libgnutlsxx28
