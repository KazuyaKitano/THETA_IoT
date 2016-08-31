cd text
del *.* /q
cd .. 

cd output
del *.* /q
cd .. 

DualfishBlender.exe movie-raw/motion.MP4 movie/motion.mp4
analysis_direct.exe

Sound.exe text/0red.txt text/1blue.txt text/2yellow.txt text/3green.txt
ffmpeg.exe -i movie/motion.mp4 -i iot.wav -map 0:0 -map 1:0 output/IoT.mp4
