
# REST API Interaction Summary

## 1. Introduction to REST API

A REST API allows applications to communicate with
servers through HTTP requests. It helps developers
retrieve and exchange data in formats such as JSON.

## 2. Tools Used

- Ubuntu Linux (WSL2)
- curl
- jq
- Python
- Git and GitHub

## 3. GitHub API

Endpoint:
https://api.github.com/users/lakshayyfr

The GitHub API was used to retrieve public profile
information and save it in github_profile.json.

## 4. JSONPlaceholder API

Endpoint:
https://jsonplaceholder.typicode.com/posts

This API provides sample posts for testing and learning.
The response is saved in sample_posts.json.

## 5. HTTP Status Codes

| Status Code | Meaning |
|-------------|---------|
| 200 | Request completed successfully |
| 404 | Requested resource was not found |

## 6. jq Filter

The following command extracts four required fields:

```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

Explanation:

- name: Extracts the profile name.
- repos: Extracts the number of public repositories.
- followers: Extracts the follower count.
- joined: Extracts the account creation date.

The jq command converts a large JSON response into
a smaller output containing the required information.

## 7. Conclusion

This experiment demonstrates how to request API data,
store JSON responses, extract useful information and
understand HTTP status codes using Linux commands.
