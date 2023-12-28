Autorippr
=========

Autorippr is currently unmaintained. I am lacking in free time to work on this myself but am happy to accept pull requests or make someone a maintainer of the project. 

That said it should still work for most cases.

## Ripping
- Uses MakeMKV to watch for videos inserted into DVD/BD Drives
- Automatically checks for existing directory/video and will NOT overwrite existing files or folders
- Checks minimum length of video to ensure video is ripped not previews or other junk that happens to be on the DVD
- DVD goes in > MakeMKV gets a proper DVD name > MakeMKV Rips

## Compressing
- An optional additional used to rename and compress videos to an acceptable standard which still delivers quality audio and video but reduces the file size dramatically.
- Using a nice value of 15 by default, it runs HandBrake (or FFmpeg) as a background task that allows other critical tasks to complete first.

## Usage
	autorippr.py   ( --rip | --compress | --extra )  [options]
	autorippr.py   ( --rip [ --compress ] )          [options]
	autorippr.py   --all                             [options]
	autorippr.py   --test
 
	Options:
	    -h --help           Show this screen.
	    --version           Show version.
	    --debug             Output debug.
	    --rip               Rip disc using makeMKV.
	    --compress          Compress using HandBrake or FFmpeg.
	    --extra             Lookup, rename and/or download extras.
	    --all               Do everything.
	    --test              Tests config and requirements.
	    --silent            Silent mode.
	    --skip-compress     Skip the compression step.
	    --force_db=(tv|movie)     Force use of the TheTVDB or TheMovieDB

## Copyright & License

Copyright (c) 2012 Jason Millward - Released under the [MIT license](LICENSE).
