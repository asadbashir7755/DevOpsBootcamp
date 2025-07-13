#!/bin/bash

word="mississippi"

#grep -o "s" <<<"$word" | wc -l
echo "$word" | grep -o "s" | wc -l 
