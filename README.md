
# MediaStream Recording API  [![Build Status](https://travis-ci.org/w3c/mediacapture-record.svg?branch=master)](https://travis-ci.org/w3c/mediacapture-record)

This is the repository for the W3C [MediaStream Recording](https://w3c.github.io/mediacapture-record/MediaRecorder.html) specification.

The implementation status in the different browsers can be found in the [caniuse](http://caniuse.com/#feat=mediarecorder) entry.

An informative listing of the **hardware accelerated support in Chromium** can be found [here](https://github.com/miguelao/mediacapture-record-implementation-status/blob/master/chromium.md)

You're welcome to contribute! Let's make the Web rock our socks off!

Notes on bikeshedding :bicyclist:
--------------

Branch `gh-pages` is automatically updated from `master` branch upon commit.

During development it's often a good idea to try and render `MediaRecorder.bs`
locally, for that, and using the online compiler:

```
curl https://api.csswg.org/bikeshed/ -F file=@MediaRecorder.bs -F force=1 > MediaRecorder.html
```

if the produced file has a strange size (i.e. zero, a few KBs), then something went terribly wrong; run instead:

```
curl https://api.csswg.org/bikeshed/ -F file=@MediaRecorder.bs -F output=err
```

and try to figure out why `bikeshed` did not like the `.bs` :'(
