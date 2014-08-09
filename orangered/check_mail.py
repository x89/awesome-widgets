#!/usr/bin/env python

import praw
import sys

r = praw.Reddit(user_agent="Awesome WM Mail Check")
r.login()  # TODO: Login from config file

count = 0
for _ in r.get_unread():
    count += 1

sys.exit(count)
