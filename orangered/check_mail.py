#!/usr/bin/env python
"""Returns the number of message replies / private messages of a Reddit user"""

from sys import exit
from configparser import ConfigParser

from praw import Reddit


r = Reddit(user_agent="Awesome WM Mail Check")

config = ConfigParser()
config.read('user.ini')

if config and 'reddit' in config:
    r.login(config['reddit']['username'], config['reddit']['password'])
else:
    r.login()  # Prompt user for password.

count = 0
for _ in r.get_unread():
    count += 1

exit(count)