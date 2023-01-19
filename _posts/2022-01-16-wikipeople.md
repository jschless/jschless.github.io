---
layout: post
category: mathblog
title:  "Legacy and Wikipedia: Will you be Remembered?"
date:   2022-12-01 21:03:36 +0530
---
# What are *your* Chances of Being Remembered?
__TLDR__: I explored biographical Wikipedia articles and their popularity.

> I just have this tremendous sense of time slipping away on me, Padraic. And I think I need to spend the time I have left thinking and composing. Just trying not to listen to any more of the dull things that you have to say for yourself. 
> 
> Colm Doherty, *The Banshees of Inisherin*

It's reasonable to be concerned about one's brief stay on Earth. What will you leave behind? Will anyone remember you? To explore this question, I have pulled the approximately 300k english-language biographical Wikipedia pages. I will demonstrate that most people don't have Wikipedia pages (duh), and even those that have them receive generally few page views. The older the page, the less likely it is to receive any attention. All this is to say give up! Even if you accomplish something noteworthy enough to have a Wikipedia page, in a generation or two no one will be viewing it.

I understand that Wikipedia pageviews are not a perfect approximation of how well-known someone is, but it seems like a reasonably good one. Also, what's the alternative? 

# The Remembered
Below, I present the 10,000 most viewed biographical Wikipedia pages of 2022. You can immediately see that almost all of the pages are closer to modern times. Some of the pages right around year zero are from a parsing issue.[^1] You can hover over each dot to see who it is. If you draw a box around the dense post-1800 cluster, the chart will zoom in and you can see the individual points more clearly.

Some of the very old people are doing ok. Our man Julius Caesar pulled 3.45 million views. Mary (mother of Jesus) and Mark Antony also did pretty well. There is a serious lull during the [dark ages](https://en.wikipedia.org/wiki/Dark_Ages_(historiography)). While there are some noteworthy appearances from the deep past, about 99% of the top 10,000 were born after 1800. 

The top page is Elon Musk with 30 million views. He's followed by Cristiano Ronaldo. The Wikipedia power users appear to be mostly Gen Z. Some surprises: Jenna Ortega, XXXTentacion, Kanye, Zendaya, Millie Bobby Brown, and Dwayne "The Rock" Johnson all appear in the top 20.

One major, unsurprising takeaway is how related the top pages are to the news cycle. For example, Johnny Depp and Amber Heard are also near the top as their court case drew a national audience. The cast of Top Gun: Maverick (Tom Cruise and Val Kilner) also top the list. Elvis is up there (he had a movie). The royal family also features big on the top 20 list (and surprisingly no Prince Harry or Megan Markle). Basically, people are reminded of some famous person's existence, and they want to learn more about them so they look them up on Wikipedia.

I think there's also some effect where *really* well-known people don't get looked up. That's my hypothesis for the conspicuous absence of Prince Harry and Megan Markle alongside the rest of the royal family. 

[^1]: Wikipedia, for all its glory, is compiled by volunteers and there are a lot of different date formats. I was able to parse most date formats, but some were too small/annoying to deal with. As a result, some pages of modern people are erroneously labeled as being born shortly after Christ.

{% include /assets/plotly/top_wikis/.html %}

# The Forgotten About
We've seen the top 10,000. How about the bottom 10,000? Well, I didn't recognize any of the names, so I am going to highlight a randomly selected one. [Shen Zurong](https://en.wikipedia.org/wiki/Shen_Zurong), the first professional librarian in China, received 485 views. He studied in the US and launched a tour around China to "promote librarianship" and spread the Dewey Decimal System. 

{% include /assets/plotly/bottom_wikis/.html %}


# Your Chances

So, what percentage of people have a Wikipedia page? Well, let's look at the number of births each year compared to the number of Wikipedia articles for people born in that year. We see a fairly steady downward trend starting in 1950. This downward trend makes sense: you are more likely to have a Wikipedia page the longer you've been alive. It really drops off for the Gen Z cohort for this reason.

In 1950, an estimated 590 million people were born worldwide. As of now, there are 2,385 Wikipedia pages for people born in 1950. Roughly 4 in a million people in the 1950 cohort "earned" a Wikipedia page. That's [somewhere in between](https://www.investopedia.com/managing-wealth/worth-playing-lottery/#:~:text=For%20example%2C%20the%20odds%20of,bee%20sting%20during%20your%20lifetime) winning the Powerball jackpot (1 in ~300 million) and being struck by lightning in a year (1 in 1.2 million). Bon chance!

![Wikipedia Pages per Million Births](/assets/wikipedia/wikis_per_million.jpeg)

# Pageview Distribution
Even if you manage to be that 1 in 4 million, your page may go largely unnoticed. The distribution of page views is skewed way right. The median number of views for 2022 was 350, or around one view per day. 1,400 of the 300k received zero page views! Moreover, these numbers are an overestimate; if a web crawler or accidental viewer stumbled upon the page, it still counts. 

![Wikipedia Pages per Million Births](/assets/wikipedia/pageview_distribution.jpeg)

# Conclusion
Very few of the [117 billion humans who have ever existed](https://www.prb.org/articles/how-many-people-have-ever-lived-on-earth/#:~:text=No%20demographic%20data%20exist%20for,ever%20been%20born%20on%20Earth.) have Wikipedia pages. I estimate the chance to be around 4 in a million. Even if you get a page, it may only be web crawlers and nerds like me viewing your stuff. 

In the future, I might try to make a stand-alone Wikipedia bio exploration tool where you can filter by career type, place of birth, and other characteristics.

> When I have fears that I may cease to be
> 
> Before my pen has gleaned my teeming brain,
> 
> Before high-pilèd books, in charactery,
>
> Hold like rich garners the full ripened grain;
> 
> When I behold, upon the night’s starred face,
> 
> Huge cloudy symbols of a high romance,
> 
> And think that I may never live to trace
> 
> Their shadows with the magic hand of chance;
> 
> And when I feel, fair creature of an hour,
> 
> That I shall never look upon thee more,
> 
> Never have relish in the faery power
> 
> Of unreflecting love—then on the shore
> 
> Of the wide world I stand alone, and think
> 
> Till love and fame to nothingness do sink.
> 
> John Keats, *When I have Fears That I May Cease To Be*
