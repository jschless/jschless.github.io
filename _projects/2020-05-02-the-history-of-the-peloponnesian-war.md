---
layout: post
category: mathblog
title:  "Plotting Thucidydes' History of the Peloponnesian War"
date:   2020-05-02 21:03:36 +0530
---
__TLDR__: I attempt to illustrate the History of the Peloponnesian War by extracting locations using natural language processing and plotting them using Python Plotly.

# Background
During quarantine, I decided to read the famous History of the Peloponnesian War by Thucydides. I have posted my thoughts on it {here} (todo).

It can be hard to follow at times with the various references to Ancient Greek city-states. It’s hard to know where these city states are located, both because I am not Greek and many of them do not exist anymore. 

At the same time, I wanted to learn the Plotly library for Python. It’s great for creating interactive visualizations and support plotting on maps, so I thought this would be a good project. I basically illustrated the book. When a sentence uses a location name, I plot the locations and print the sentence.

The project had two main parts:
1. Extract locations from the text using natural language processing.
2. Plot and animate on a Plotly map.

{% include plotly/pel_war.html %}

# Natural Language Processing: Extracting Locations with Stanford CoreNLP
I want to find the sentences where city names are mentioned, so I can plot these cities and then display the text. There were a few constraints. 

- There are hundreds of locations used, and without a database, I had to look up their locations on my own. So, I only used the top 50 cities/locations
- There are instances where people named after locations are used. I would like to plot Melos if Thucydides is talking about the Melians, but I didn't have a mapping of city to name of resident. So, I only plotted exact references to locations, which matched the cities in my database for latitude and longitude.



```python
from stanza.server import CoreNLPClient
import os
from tqdm import tqdm

os.environ['CORENLP_HOME'] = "/home/joe/Documents/stanford-corenlp-full-2018-10-05/"

annotations = []
with CoreNLPClient(annotators=['tokenize','ssplit','pos', 'lemma','ner',\
                               'depparse','coref', 'relation'], memory='6G', timeout=50000, threads=8) as client:
    full_text = open('pelopwar.txt').read()
    paragraphs = full_text.split('\n\n')   
    for par in tqdm(paragraphs):
        annotations.append(client.annotate(par))
```
Once we have these annotations, we loop through them and pick out the sentences/paragraphs that have locations in them.


```python
sentence_locations, paragraph_locations = [], []
for par, ann in zip(paragraphs, full_ann):
    par_locations = []
    for sentence, sentence_ann in zip(par.split('.'), ann.sentence):
        locations = []
        for mention in sentence_ann.mentions:
            if mention.ner in ["LOCATION", "0", "CITY", "COUNTRY", "STATE_OR_PROVINCE"]:
                locations.append(mention.entityMentionText)
                par_locations.append(mention.entityMentionText)
        
        sentence_locations.append((sentence, locations))
    paragraph_locations.append((par, par_locations))
```

# Finishing Touches
Next, I had to extract the locations and filter them based on usage. I only considered locations that were used more than 10 times according to the NLP annotations. I probably should've done this by actually searching the text because the NLP is far from perfect and missed many uses, but it wasn't that important to me. The rest of the code is pretty standard Python, so I won't include it, but feel free to check it out on my Github. I warn you it was hacked together. Basically, I built a dataset that had locations and the sentence they were used in. I fed this to a Plotly Scattermapbox graph object and did some animating. I plan to post some tutorials on Plotly's low-level API in the future, but I want to get a better handle on it first.
