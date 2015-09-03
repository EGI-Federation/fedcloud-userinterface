#!/usr/bin/env bash

# clean bash history and cloud init logs
rm -f ~/.bash_history
rm -f /var/log/cloud-init*

# Remove virtualbox things
rm -f VBoxGuestAdditions.iso
