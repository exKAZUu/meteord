#!/bin/bash
docker build -t exkazuu/meteord:base ../base
docker build -t exkazuu/meteord:onbuild ../onbuild
docker build -t exkazuu/meteord:devbuild ../devbuild
docker build -t exkazuu/meteord:binbuild ../binbuild
