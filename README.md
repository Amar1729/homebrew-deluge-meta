# deluge-meta

This initially started as a "meta-package" for Deluge 2.0 dependencies on MacOS, but turned into a full installation of the `deluge` pip module, including the GUI `deluge-gtk`.

Currently, Deluge 2.0 is in beta, but the newest release of the client available for MacOS is 1.x, which is incompatible with 2.0 servers. This tap provides a working (for now?) build for Deluge 2.0 to reduce the troubles with building and linking Deluge's pip module on Mac.

See the official doc page on installation [here](https://deluge.readthedocs.io/en/latest/intro/01-install.html).

I used [this thread](https://forum.deluge-torrent.org/viewtopic.php?t=55393&start=10) on the deluge forums as a reference while working on this.

## How do I install these formulae?
`brew install amar1729/deluge-meta/<formula>`

Or `brew tap amar1729/deluge-meta` and then `brew install <formula>`.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
