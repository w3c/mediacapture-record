
# MediaStream Recording API

This is the repository for the W3C [MediaStream Recording](https://w3c.github.io/mediacapture-record/MediaRecorder.html) specification.

The implementation status in the different browsers can be found in the [caniuse](http://caniuse.com/#feat=mediarecorder) entry.

An informative listing of the hardware accelerated support in Chromium can be found [here](https://github.com/miguelao/mediacapture-record-implementation-status/blob/master/chromium.md)

You're welcome to contribute! Let's make the Web rock our socks off!

Notes on bikeshedding :bicyclist:
--------------

To compile `MediaRecorder.bs` into `MediaRecorder.html` , I'm using the online compiler:

```
curl https://api.csswg.org/bikeshed/ -F file=@MediaRecorder.bs -F force=1 > MediaRecorder.html
```

if the produced file has a strange size (i.e. zero, a few KBs), then something went terribly wrong; run instead:

```
curl https://api.csswg.org/bikeshed/ -F file=@MediaRecorder.bs -F output=err
```

and try to figure out why `bikeshed` did not like the `.bs` :'(
