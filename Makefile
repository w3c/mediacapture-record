LINEWRAP = false

all: MediaRecorder.diff.html 

clean:
	- rm -f MediaRecorder.diff.html MediaRecorder.txt MediaRecorder.orig.txt

MediaRecorder.txt: MediaRecorder.html
	html2text.py MediaRecorder.html | fold -bs -w 80 > MediaRecorder.txt

MediaRecorder.orig.txt: MediaRecorder.orig.html
	html2text.py MediaRecorder.orig.html | fold -bs -w 80 > MediaRecorder.orig.txt

MediaRecorder.diff.html: MediaRecorder.orig.txt MediaRecorder.txt
	htmlwdiff MediaRecorder.orig.txt MediaRecorder.txt > MediaRecorder.diff.html

include webrtc-respec-ci/Makefile

# Import the respec CI Makefile
webrtc-respec-ci/Makefile:
	git clone --depth 5 https://github.com/w3c/webrtc-respec-ci $(dir $@)

update::
	git -C webrtc-respec-ci pull
