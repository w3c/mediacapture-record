
# MediaStream Recording API  [![Build Status](https://travis-ci.org/w3c/mediacapture-record.svg?branch=master)](https://travis-ci.org/w3c/mediacapture-record)  <a href="https://www.irccloud.com/invite?channel=%23media-capture&amp;hostname=irc.freenode.net&amp;port=6697&amp;ssl=1" target="_blank"><img src="https://img.shields.io/badge/IRC-%23media--capture-1e72ff.svg?style=plastic"  height="20"></a> <a href="https://www.irccloud.com/invite?channel=%23webrtc&amp;hostname=irc.w3.org&amp;port=6667" target="_blank"><img src="https://img.shields.io/badge/IRC-%23webrtc-1e72ff.svg?style=plastic"  height="20"></a>

This document specifies methods for live recording of video and audio, local and remote.

Specification and Samples
-------------
* [Media Recording (a.k.a. MediaStream Recording) Specification](https://w3c.github.io/mediacapture-record/MediaRecorder.html), including code samples.
* Implementation status in the different browsers: [caniuse](http://caniuse.com/#feat=mediarecorder).
* [Hardware accelerated support in Chromium](https://github.com/miguelao/mediacapture-record-implementation-status/blob/master/chromium.md)


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
