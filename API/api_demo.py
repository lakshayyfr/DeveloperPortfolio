
# API Data Demonstration
# Reads and displays downloaded API data

import json
from pathlib import Path

folder = Path(__file__).parent

with open(folder / "github_profile.json") as file:
    profile = json.load(file)

with open(folder / "sample_posts.json") as file:
    posts = json.load(file)

print("=" * 40)
print("       API DATA REPORT")
print("=" * 40)

print("Name:", profile["name"])
print("Username:", profile["login"])
print("Repositories:", profile["public_repos"])
print("Followers:", profile["followers"])
print("Joined:", profile["created_at"])

print("\nJSONPlaceholder Data")
print("Total Posts:", len(posts))
print("First Post Title:", posts[0]["title"])

print("\nReport generated successfully.")
