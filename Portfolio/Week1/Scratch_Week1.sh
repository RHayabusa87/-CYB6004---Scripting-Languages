#!/bin/bash
echo "$secretPass" | sha256sum -c "$filename"