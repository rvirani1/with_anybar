# with_anybar

With_anybar is a simple gem that uses [AnyBar](https://github.com/tonsky/AnyBar) as a notification system for a long running command line command. For example, you may need to execute a long build process or script that sometimes may error. Rather than manually checking the status of that command, you can see whether it's complete via AnyBar!

## Installation

Install AnyBar

    $ brew cask install anybar

Install the with_anybar gem

    $ gem install with_anybar

## Usage

Call any command on your terminal using with_anybar

    $ with_anybar say "Your AnyBar should turn orange before turning green right now"

While the command is running, your AnyBar will turn **ORANGE**

If the command succeeds, your AnyBar will turn **GREEN**

If the command fails, your AnyBar will turn **RED**

If you are running multiple instances of AnyBar or not running it on the standard port (1738), you can set the
`ANYBAR_PORT` environment variable on run.

    $ ANYBAR_PORT=1739 with_anybar say "Your AnyBar should turn orange before turning green right now"
