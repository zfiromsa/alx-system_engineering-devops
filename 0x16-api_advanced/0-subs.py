#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number of subscribers
for a given subreddit
"""

import requests


def number_of_subscribers(subreddit):
    """
    function that queries the Reddit API and returns the number of
    subscribers for a given subreddit
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'Custom User Agent'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        return data['data']['subscribers']
    elif response.status_code == 404:
        return 0
    else:
        print("None")
        return 0

