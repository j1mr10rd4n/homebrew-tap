j1mr10rd4n/homebrew-tap
=======================

These formulae are either under development or not available in the [core taps](https://github.com/Homebrew/homebrew/wiki/Interesting-Taps-&-Branches).

How do I install these formulae?
--------------------------------
Just `brew tap j1mr10rd4n/homebrew-tap` and then `brew install <formula>`.

If the formula conflicts with one from another tap, you can `brew install j1mr10rd4n/tap/<formula>`.

You can also install via URL:


    brew install https://raw.github.com/j1mr10rd4n/homebrew-tap/master/<formula>.rb

Formula notes
-------------

Meteor

Meteor is included here because it has the ability to upgrade itself and homebrew does not allow that (see [meteor issue #16](https://github.com/meteor/meteor/issues/16)).
I intend to keep it up to date here, but it should be remembered that if you have, say, meteor-0.9.4 installed via homebrew and you do brew upgrade meteor, even though homebrew will download the new package, meteor itself won't be upgraded until you do meteor update.

