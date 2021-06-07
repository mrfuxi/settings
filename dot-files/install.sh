#!/usr/bin/env bash

ls .[^.]* | xargs -I{} ln --force -s $(pwd)/{} ~/{}
