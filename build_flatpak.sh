#!/bin/sh
flatpak-builder --force-clean build build-aux/flatpak/org.gnome.Evince.json
flatpak build-export ./repo build
flatpak build-bundle repo Evince.flatpak org.gnome.Evince --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
