#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap es || setxkbmap us
