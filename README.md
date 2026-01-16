# xkcd.sh
A short bash script to fetch a given XKCD comic and print it to the terminal.

## Usage
- Run without arguments to fetch today's comic:
	- `./xkcd.sh`
- Run with a comic number to fetch a specific comic:
	- `./xkcd.sh 614`

## Dependencies
- `bash`
- `curl`
- `jq`
- `ImageMagick`
- a [Kitty Graphics Protocol](https://sw.kovidgoyal.net/kitty/graphics-protocol/) compatible terminal, as `kitten icat` is used for image display
