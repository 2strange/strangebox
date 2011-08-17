# my Version of Gem in a Box (I just put it in another dress)

..original by:
Tom Lea (cwninja) .. https://github.com/cwninja/geminabox


## Really simple rubygem hosting

Gem in a box is a simple [sinatra][sinatra] app to allow you to host your own in-house gems.

It has no security, or authentication so you should handle this yourself.

## Server Setup
    gem install geminabox
Create a config.ru as follows:

    require "rubygems"
	require "strangebox"

	Strangebox.data = "~/dev" # ... your Gem-folder

	#	If you need authentication:
	#	use Rack::Auth::Basic, "StrangeBox" do |username, password|
	#		[username, password] == ['your_name', 'your_password']
	#	end

	run Strangebox

And finally, hook up the config.ru.

	e.g.:  $ rackup

## Client Usage

    $ gem install strangebox

    $ gem build secretgem.gemspec

	$ gem sbox ./secretgem-0.0.1.gem

	$ gem sources -a http://localhost:9292/   ... your Host

	$ gem sources -a http://your_name:your_password@localhost:9292/   ... your Host with username & password

Simples!

## Licence

Fork it, mod it, choose it, use it, make it better. All under the [do what the fuck you want to + beer/pizza public license][WTFBPPL].

[WTFBPPL]: http://tomlea.co.uk/WTFBPPL.txt

