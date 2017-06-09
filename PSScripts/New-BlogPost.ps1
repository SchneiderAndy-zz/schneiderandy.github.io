param($Title)
$dateBlog = get-date -Format s
$dateFile = Get-Date -Format "yyyy-MM-dd"
$string = @"
---
layout: post
title: $Title
modified:
categories: blog
excerpt:
tags: 
date: $dateBlog
---
"@
$file = "{0}-{1}{2}" -f $dateFile,"$Title",".md"
$dir = (get-item $PSScriptRoot).parent.FullName
$post = new-item -ItemType File -Path "$dir\_posts\blog\$file"

Add-Content -Value $string -Path $post.FullName
