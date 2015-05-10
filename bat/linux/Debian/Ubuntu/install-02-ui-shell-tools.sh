#!/bin/bash

sudo add-apt-repository universe
sudo apt-get update -y
sudo apt-get install -y nautilus
sudo apt-get install -y nautilus-actions
sudo apt-get install -y nautilus-open-terminal

nautilus -q

logout
