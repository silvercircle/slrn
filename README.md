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
