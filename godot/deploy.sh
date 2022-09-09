#!/bin/bash

# Deploy script to load the game onto a steam deck

echo "Uplading to target deck at $1"

mkdir -p _build

# Build
godot --no-window --export "Steam Deck" "_build/Deck Commander.x86_64"

# Push
rsync -av "_build/" "deck@$1:/home/deck/CustomGames/DeckCommander/"
