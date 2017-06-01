# pipelight
Pipelight makes it possible to run Windows proprietary plugins (i.e. Adobe Flash, Silverlight) in Linux browsers with the help of Wine.


Installing Pipelight


Install Pipelight by entering the following into your terminal:

	$ sudo add-apt-repository ppa:pipelight/stable

After the PPA has been added, you’ll want to update your software sources to reflect the change you’ve made.

	$ sudo apt-get update

With the software sources updated, it’s time to install Pipelight.

	$ sudo apt-get install --install-recommends pipelight-multi

Then, once the plugin is in your system, you’ll need to run this command to update it.

	$ sudo pipelight-plugin --update

Configuring Pipelight

Since the plugin loads in the Windows version of Flash Player, it’s a good idea to remove the Linux one so that they do not conflict. If you need flash to browse other content, consider just using Firefox for HBO Now, and Chromium for other things.

Note: Pipelight can only be used in Firefox.

	$ sudo apt-get remove adobe-flashplugin

Now that the Linux Flash Player is out of the way, it’s time to enable all of the Windows plugins that are needed.

	$ sudo pipelight-plugin --enable flash
	$ sudo pipelight-plugin --enable widevine
	$ sudo pipelight-plugin --enable silverlight

After that, quickly update Pipelight to reflect the new changes.

	$ sudo pipelight-plugin --update

Now that Pipelight is fully configured, the only thing left to do is update Firefox.

	$ sudo pipelight-plugin --create-mozilla-plugins


Configuring Firefox

User Agent Switcher Firefox extension (https://addons.mozilla.org/en-US/firefox/addon/uaswitcher/) tool quickly changes the about:config, the User-Agent header & navigator.userAgent. For Firefox 57 below this extension is hosted on Github https://github.com/muzuiget/user_agent_overrider 

After installation, you should click on User Agent Switcher toolbar button, select a User-Agent “Windows / Edge” in the popup menu.

Enjoy!
