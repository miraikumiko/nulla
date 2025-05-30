# Nulla

An agnostic social network following the KISS and UNIX philosophy, the main principles of which are minimalism and rationalism. It implements the ActivityPub protocol and promises maximum compatibility with all existing implementations.

## TODO

Stack: Elixir + Phoenix + PostgreSQL

- [ ] Lightweight web interface
- [ ] API compatible with other ActivityPub instances
- [ ] JWT
- [ ] Groups
- [ ] Formatting: Text / Markdown / HTML
- [ ] Links preview
- [ ] Timelines: Home / Local / Global / Custom
- [ ] Global search
- [ ] Bookmarks
- [ ] Profile links verification
- [ ] Ordering profile links
- [ ] Import/Export posts
- [ ] Sync user settings on the server
- [ ] Restricted direct messages
- [ ] Direct messages tab
- [ ] Multiple accounts

### Server configuration

* Post preview
* Character limit per post
* Disk space limit per user
* Enable/Disable custom emoji for whole instance
* Limit on posts (count/time)
* Limit on storage

### User settings

#### Profile

* Avatar
* Banner
* Name
* Bio
* Location
* Birthday
* Links
* Follow requests approval
* Toggle reacts under own posts
* Toggle view of reacts under posts
* Profile migration
* Delete account

===== Disk Usage: 100 MB (20%) =====

#### Security

* Change password
* Token
* Enable/Disable email login notifications
* Sessions

| IP              | Datetime            | Action |
| ----------------|---------------------|--------|
| 127.0.0.1       | 2025-01-01 00:00:00 | revoke |
| 127.127.127.127 | 2025-02-02 00:00:00 | revoke |

#### Filters

* Placeholder with rules

```
filter keyword #tag user@example.com example.com
```

* Show replies of all followed users
* Show replies of this followed users
