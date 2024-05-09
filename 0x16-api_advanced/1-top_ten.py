#!/usr/bin/python3
"""function that queries the Reddit API and prints the titles
of the first 10 hot posts listed for a given subreddit."""


import requests
import sys


def top_ten(subreddit):
    """function that queries the Reddit API and prints the titles
    of the first 10 hot posts listed for a given subreddit."""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {
        'User-Agent': 'Custom User Agent'
    }

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children'][:10]
            print(f"Top 10 hot posts in r/{subreddit}:")
            for post in posts:
                print(post['data']['title'])
        elif response.status_code == 404:
            print("None")
        else:
            print("None")
    except Exception as e:
        print("None")


