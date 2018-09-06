# slrn

This is a fork of [slrn Usenet Newsreader](http://slrn.sourceforge.net)

So far, there are only some minor changes and one new option to set a left indentation in the
article pager. Version number has been changed to 1.0.4-unoff to indicate its forked status.

## License

* GPL V2

## Planned

* support format=flowed in the article pager. Implementing a new text wrapping engine.
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
