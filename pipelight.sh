#!/bin/sh
{
    echo "This script requires sudo."
    echo "You will be prompted for your password."

    # clear any previous sudo permission
    sudo -k

    # run inside sudo
    sudo sh <<SCRIPT
    
    add-apt-repository ppa:pipelight/stable

    apt-get update

    apt-get install --install-recommends pipelight-multi

    pipelight-plugin --update

    apt-get remove adobe-flashplugin

    pipelight-plugin --enable flash

    pipelight-plugin --enable widevine

    pipelight-plugin --enable silverlight

    pipelight-plugin --update

    pipelight-plugin --create-mozilla-plugins    
SCRIPT
}
