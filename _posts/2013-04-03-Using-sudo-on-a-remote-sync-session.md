---
layout: post
title:  "Using sudo on a remote sync session"
---

Hey guys,

Quick one that helps when wanting to copy files over owned by root via rsync.

On the target machine

`sudo vi /etc/sudoers`

Append the following line the bottom of the file. Replace 'dev' with the user.

`dev ALL= NOPASSWD:/usr/bin/rsync`

Run rsync with `--rsync-path`

`rsync -av -e "ssh" --rsync-path="sudo rsync" /source/ dev@target:/foo/`


**Pro Tip** Monitor traffic with `nettop -m tcp` and look at the SSH processes

-Matt
