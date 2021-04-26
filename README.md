# transcoding-scripts

This collection of scripts aims to
* Download each YouTube video in all available codecs (avc, vp9, av1)
* Estimate which codec gives the best image quality (considering codec efficiency and video bitrate) and filter these videos into a separate folder
* Upscale videos to 8K

# Prerequisites
* youtube-dl
* HandBrake (command line)
* Python 3

# Usage

1. Clone repo
2. Drag `sample_url.txt` to open with `download.bat`. This will
    * Save each video in all 3 codecs to `Download/`
3. Drag `Download/` folder to open with `sort.bat`. This will
    * Determine which codec gives the best quality
    * Copy video with best quality from `Download/` to `Input/`
    * Move all 3 videos from `Download/` to `Archive/`
4. Drag `Input/` folder to open with `upscale_8K.bat`. This will
    * Read all the videos in `Input/`, encode in 8K and save in `Output/`
