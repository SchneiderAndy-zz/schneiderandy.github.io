param($Title)
$string = @"
---
layout: post
title: $Title
modified:
categories: blog
excerpt:
tags: 
date: $(Get-Date -Format s)
---
"@
$file = "{0}-{1}{2}" -f (Get-Date -f "yyyy-MM-dd"),"$Title",".md"
$dir = (get-item $PSScriptRoot).parent.FullName
new-item -ItemType File "$dir\_posts\blog\$file"
