---
layout: post
category: mathblog
title: "Armymarkdown: Making Memos Easy"
date: 2022-11-25 21:03:36 +0530
---


![Armymarkdown](/assets/armymarkdown/website_screenshot.png)

# Motivation

The Army runs on memorandums. Appointment orders, FRAGORDs, etc. They are all written in accordance with AR 25-50: Managing Correspondance, which includes a set of specific instructions on formatting. These instructions can be tedious to follow. When editing memos in Microsoft Word, its easy to add an extra tab or return and thereby create a formatting error. When you're writing a memo, you should be worried about effectively communicating, *not* whether your fat finger has introduced an embarassing error.

I created [Armymarkdown](https://armymarkdown.herokuapp.com) to alleviate these issues. Armymarkdown compiles memos and guarantees the correct format every time. It was designed to be (hopefully) easy to use.

# Usage
At the top of the text box, you simply fill out the details for your organization, your name and rank, etc.

```
ORGANIZATION_NAME=4th Engineer Battalion
ORGANIZATION_STREET_ADDRESS=588 Wetzel Road
ORGANIZATION_CITY_STATE_ZIP=Colorado Springs, CO 80904
...
MEMO_TYPE=MEMORANDUM FOR RECORD
SUBJECT=Example Memo
```

Next, you begin typing the actual content of the memo. Each paragraph starts with a "-". To add a subparagraph, simply indent the "-". Armymarkdown takes care of numbering/lettering.

``` 
- This memo is a demonstration of Armymarkdown.

- Don't worry about numbering or lettering, simply begin each line with a "-". 

- To create an indented section, simply indent the next line 4 spaces.
    - This indented section will begin with (a).
        - We can indent even further.
            - We can try to indent further, but AR 25-50 forbids this.

- Press the "Create Memo PDF" button when you're done!
```

Then, press the button at the bottom of your screen and a proper memo will be downloaded to your computer.

<img src="/assets/armymarkdown/example_memo.png" alt="drawing" width="70%"/>

# Implementation

I wanted to create a basic markdown-like language that would be user friendly. This language is parsed and translated into latex. This markdown-like language is meant to be more amenable to the average soldier than latex. 

### Parser
The parser operates in two steps. First, it scans the text for admin information denoted by ```ADMIN_INFO=some text```

Once the admin section is over, it parses the main body of the memo. I decided to implement this as nested bullets so users would not have to worry about the various numbering/lettering rules for memo paragraphs. It converts the nested bullets into a list of lists.

### Writer

Once the memo contents are parsed, the writer then creates a temporary latex file containing the memo. From here, it is compiled and the memo pdf is created. 

### Deploying to the Web

Once I had a minimum viable product, the next challenge was making it accessible on the web. This is usually pretty straightforward, but it was complicated by the fact that the average user would be on a DOD network. 

The website is a simple one page Flask app. I decided to deploy it with Heroku because Heroku was free (this is no longer true). I had to create a [custom Heroku dyno](https://github.com/jschless/heroku-buildpack-tex) that had the necessary latex packages to comnpile the memos. I used Celery and Redis to manage task scheduling and Amazon S3 to deal with file uploads/downloads.

DOD networks create bugs with all online text editors, so I had to use a simple text box as the memo editor. This is frustrating because I cannot have syntax highlighting, advanced spellcheck, or other desirable features that might make the user experience more enjoyable. I tried at length to get a number of javascript text editors to work with no luck.

## Future Work

In the future, I would like to add more input validation to prevent silly mistakes. I've currently implemented regular expression matching to ensure dates are properly formatted, but the same approach could be added for all the admin fields.

I would also consider adding a GUI-like interface for building memos. While the markdown-like text language is easy for me to use, it still presents an unfamiliar challenge to less computer-savy users. Something akin to the evaluation entry system would do the trick, which allowed users to step-by-step build the memo. 

Also, there are some advanced features it would be nice to add. As of now there is no support for tables or multiple signature blocks. The most advanced memos require these features. 

Finally, I would like to streamline the latex compilation so it doesn't take so long. It takes like 8 seconds to compile even simple memos. This would be a lot of work.