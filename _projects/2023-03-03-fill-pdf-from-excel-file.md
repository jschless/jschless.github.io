---
layout: post
category: mathblog
title:  "Filling PDFs in Bulk from an Excel File"
date:   2023-03-03 21:03:36 +0530
header:
  overlay_image: /assets/malto2062/mal_snippet.png
  overlay_filter: 0.5
  teaser: /assets/malto2062/mal_snippet.png
excerpt: "How I saved my coworkers hours of manual data entry by automating the tedious task of filling Army equipment forms using Python and PDF manipulation tools."
---
__TLDR__: I saved my coworkers hours of time by automating a menial task.

This post serves three main purposes: 

1. Serve as a quick tutorial on filling PDFs in Python
2. Demonstrate a rare value-add by a technical person employed in a highly non-technical organization
3. Gripe about PDFs and Adobe

## The Problem
Every Army unit has an arms room, where weapons and weapon-adjacent things are stored. For good reason, this stuff has to be tracked very carefully. An arms room is supposed to have a Master Authorization List (MAL) that can take a variety of forms but basically pairs individuals with equipment. An example with fake data is available below:

![MAL Example](/assets/malto2062/mal_snippet.png)

To draw any equipment from the arms room, an individual must have a DA Form 2062 to sign it out. Its best to have these pre-filled so that soldiers don't have to write everything down over and over (and it keeps them from drawing the wrong equipment on accident).

![2062 Example](/assets/malto2062/2062_example.png)


I created a small script that maps each individual's equipment to a 2062 and autofills everything they might need to sign out. This creates value because whenever the MAL changes, these forms can be automatically updated, rather than some poor soul hand-jamming every serial number into a pdf.


## A Quick Tutorial
Things you need to do this:

- `Python`
	- `Pandas`: for reading an excel file and manipulating things
	- `pypdftk`: a Python wrapper for `pdftk`
- `pdftk`: A binary for manipulating PDFs
- `pypdf` or Adobe Acrobat Pro: a way to determine what field names are

There's three quick steps to fill any pdf. You need to first find out what the field names for the PDF you're trying to fill are, then create a dictionary in `Python` that maps field names to the values that go in the field names, and finally call `pdftk` to fill the file and save it. The full script is available on my [github](https://github.com/jschless/mal_to_2062).

### Finding Field Names
The first step is to figure out what the fields you want to fill are called. For this, I loaded a pre-filled `pypdf` and simply printed the fields.

```Python
from pypdf import PdfReader
from pprint import pprint
pprint(PdfReader(path_to_pdf).get_fields())
``` 

I searched for the pre-filled values of the cells I wanted to edit and found what the fields were labelled. The fields I wanted to edit were labeled `ITEM DESCRIPTION bRow1` where each succeeding row simply incremented the number at the end `bRow`.
Note, this could also be done in Adobe Acrobat by "editing the form" and manually inspecting the forms to see what their alias is. 

### Create A Dictionary
I read the MAL file into a Pandas dataframe and turned each row into a dictionary.

```python
import pandas as pd
df = pd.read_excel("MAL.xlsx")
records = [r for r in df.to_dict('records')]
```

Then I processed each row and created a mapping from the field name to the actual value:

```python
# filter the data to remove null values
example_data = {k:v for k,v in records[0] if not pd.isna(v)}

ITEM_KEY = "ITEM DESCRIPTION bRow"
# create a dictionary from FIELD_NAME: Value i wanted to be displayed
params = {ITEM_KEY + str(i+1): f + f"  ({example_data[f]})" for i, f in enumerate(example_data.keys())}
```

### Let pdftk Eat
Finally, just pass this dictionary into the `fill_form` function from `pdftk`:

```python
from pypdktk import fill_form
fill_form(pdf_file, params, out_file, flatten=False)
```
The `fill_form` function takes the template pdf file, the dictionary of fields to values, and an output file path. Setting `flatten=False` makes the created PDF editable.

It's pretty simple! There is some filtering and data manipulation required, but that will vary based on the use case. In short, this was like 50 lines of code written in 40 minutes that saved a combined six hours of initial data entry, as well as any future efforts. This little program could easily be extended to a GUI or CLI that walks a user through how to fill a pdf by allowing them to select a field and corresponding Excel column.


## Dreams of an Army with Good IT
I am a mediocre programmer, but I know enough to see the limitations in Army IT systems. A lot of it seems to stem from the pursuit of "security." I'm not sure how secure Army IT is, but to the extent that security means handcuffing the user, they excel. My limited knowledge allows me to identify things that can be automated and either implement a nice solution (on my personal computer because I am blocked from doing anything on my work computer) or realize it is too difficult because of the various safeguards or lack of integration with modern software. 

It would be incredibly easy for the Army to mandate a particular format for a MAL and offer software that pre-fills 2062s. It took me, a mediocre programmer, an hour to do this. But no such solution exists. And there are other examples of repetitive things where a collection of scripts would save people a lot of time (especially in the maintenance/property realm). I don't think top down solutions are likely for many of these small problems, but I wonder if a bottom up approach might work, where the few servicemembers who have programming skills can make their organizations more efficient and make more influential leaders aware of simple solutions.

I think of Sergeant Curtis Grubb Culin III, who [welded a bar to a tank with some prongs on it to allow tanks to push through hedgerows in Normandy](https://www.wearethemighty.com/mighty-history/this-is-how-hedgerows-made-the-invasion-of-normandy-a-living-hell/).[^1] At a very junior level, it is possible to make improvements, but it takes higher echelons to spread these solutions Army-wide. I wonder if IT could be improved by people like Sergeant Culin.

[^1]: I understand the absurdity of implicitly comparing myself, who saved a few hours of clerical work, to this dude who played a large role in a successful D-Day! I just use it as an example because people at junior levels today often feel hopeless in affecting organization-wide change, but it's been done before. Perhaps the fact that I have to reference WWII suggests I should feel hopeless. 

## Complaints About PDFs
PDFs are annoying. The whole SVG thing is not very user-friendly and the PDF ecosystem of readers is not very standardized. They are user-friendly enough to be ubiquitous but poorly-designed enough to be a pain to work with. People obsess over "sending something as a pdf" but PDFs and their implementation are [arbitrary](https://www.youtube.com/watch?v=K7oxZCgO1dY&ab_channel=Computerphile). Everyone has different PDF readers ranging from their browsers (Chrome, Firefox) to the default readers on their computers (Preview, LibreOffice, Edge) to paid readers that offer more advanced features (Adobe Acrobat, Foxit). Adobe Acrobat has the bulk of the market share and seems intent on holding others hostage to their own arbitrary standards.

Adobe Acrobat øffers a user-friendly way to create forms, but they don't cooperate well with other viewers. Moreover, they paywall their API and seem intent on hindering interoperability. I discovered this when trying to use `pypdf` initially to edit the form. There are a lot of weird bugs that only seem to be a problem in Acrobat but whatever. The bottom line is Adobe doesn't integrate well with Excel and filling forms is often done by hand, even in the case where you have to fill many forms at once.