# misctools

Random collection of small tools I needed at the moment

* [tiddlytags](exe/tiddlytags): Extracts all tags from a [tiddlywiki](https://tiddlywiki.com/) / [Bob](https://github.com/OokTech/TW5-Bob) tiddler directory
* [durationcalc](exe/durationcalc): Add / subtract durations (HH:MM)
* [qr](exe/qr): Encode the first argument as QR code and display it on the console
* [querymvn](exe/querymvn) : Fetch a package from your maven repository, printing all diagnostic info
* [bt1edit](exe/bt1edit) : Bard's Tale 1 (DOS) character editor

## Installation

Dependencies are managed via [bundler](https://bundler.io/). To install everything (locally in this directory) simply run `bundle install`.

The tools themselves can be installed locally via `bundle exec rake install`.
