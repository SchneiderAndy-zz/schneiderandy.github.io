param($Title)
$date = get-date -Format s
$string = @"
---
layout: post
title: $Title
modified:
categories: blog
excerpt:
tags: 
date: $date
---
"@
$file = "{0}-{1}{2}" -f $date,"$Title",".md"
$dir = (get-item $PSScriptRoot).parent.FullName
$post = new-item -ItemType File "$dir\_posts\blog\$file"
Add-Content -Value $string -Path $post.FullName
