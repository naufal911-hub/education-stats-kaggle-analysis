#!/bin/bash
set -e
groupadd -g 5050 datagroup 2>/dev/null || true
usermod -aG 5050 jovyan
