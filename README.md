# transcoding-scripts

This collection of scripts aims to
* Download each YouTube video in all available codecs (avc, vp9, av1)
* Estimate which codec gives the best image quality (considering codec efficiency and video bitrate) and filter these videos into a separate folder
* Upscale videos to 8K

## Getting Started


### Prerequisites
* youtube-dl
* HandBrake (command line)
* Python 3

### Installation

1. Clone repo

## Usage

1.  Open `sample_url.txt` with `run_all.bat`. Alternatively, launch `run_all.bat` with no arguments, then paste URL when prompted. This will
    * Save each video in all 3 codecs to `Archive/`
    * Save encoded 8K video in `Output/`

### Alternative method

1. Open `sample_url.txt` with `download.bat`. Alternatively, launch `download.bat` with no arguments, then paste URL when prompted. This will
    * Save each video in all 3 codecs to **./Download/**
2. Open **./Download/** folder with `sort.bat`. This will
    * Determine which codec gives the best quality
    * Copy video with best quality from **./Download/** to **./Input/**
    * Move all 3 videos from `Download/` to **./Archive/**
3. Open **./Input/** folder with `upscale_8K.bat. This will
    * Read all the videos in **./Input/**, encode in 8K and save in **./Output/**
    * Delete the videos in **./Input/**
