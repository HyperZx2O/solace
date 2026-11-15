#!/bin/bash
set -e
cd apps/mobile
dart format --set-exit-if-changed .
flutter analyze
