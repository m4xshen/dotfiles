#!/usr/bin/env bash

killall -q polybar
polybar -q left &
polybar -q center &
polybar -q right &
