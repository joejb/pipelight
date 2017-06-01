#!/bin/bash

sudo add-apt-repository ppa:pipelight/stable

sudo apt-get update

sudo apt-get install --install-recommends pipelight-multi

sudo pipelight-plugin --update

sudo apt-get remove adobe-flashplugin

sudo pipelight-plugin --enable flash

sudo pipelight-plugin --enable widevine

sudo pipelight-plugin --enable silverlight

sudo pipelight-plugin --update

sudo pipelight-plugin --create-mozilla-plugins
