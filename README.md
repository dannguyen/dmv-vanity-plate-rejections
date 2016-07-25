
# License plates forbidden by U.S. States

A repo to collect public records pertaining to U.S. states' policies on forbidden vehicle license plates (e.g. [BADA55](https://www.muckrock.com/news/archives/2014/jun/27/rejected-vanity-plates-ma-mt-nj/)).

[governmentattic.org](http://www.governmentattic.org/StateDMV-ForbidPlates.html) and [MuckRock](https://www.muckrock.com/news/archives/2014/may/05/vanity-plate-rejections-whats-your-state/) have independently tried to collect this information with varying success. This repo will collect and parse their efforts and maybe try to follow up with the holdouts.

Here's a CSV with what's been collected so far: [checklist.csv](checklist.csv)


# Past work

## governmentattic.org

In 2012, governmentattic.org [sent public records requests to every state](http://www.governmentattic.org/StateDMV-ForbidPlates.html):

> The Departments of Motor Vehicles (DMV) of each US state and the District of Columbia were queried under the appropriate Open Records laws, requesting the following:

> - list of prohibited or banned personalized license plates
> - internal instructions of DMV employees on procedures for screening personalized license plate applications for offensive or objectionable words, phrases, or messages
> - copies of administrative appeals of withdrawn personalized plates, if accessible.

Only __26__ states apparently responded to governmentattic.org.

I've put their PDFs (and their OCRed versions) in: [data/governmentattic.org/](data/governmentattic.org/)


## MuckRock's rejected vanity plates

MuckRock attempted a crowdsourced project in 2014 to get rejected vanity/personalized plates from various states: [Vanity plate rejections: What's in your state?](https://www.muckrock.com/news/archives/2014/may/05/vanity-plate-rejections-whats-your-state/):


Subsequent updates to the project show that requests were made to at least [25 states](https://www.muckrock.com/news/archives/2014/may/27/vanity-plate-rejections-update/). The latest update I could find was in [June 27, 2014](https://www.muckrock.com/news/archives/2014/jun/27/rejected-vanity-plates-ma-mt-nj/). Note that the map doesn't appear to be up to date, as California is marked as "submitted" rather than "[completed](https://www.muckrock.com/news/archives/2014/may/27/vanity-plate-rejections-update/))".



Some of the states responded with real spreadsheets. And we can copy the general template of MuckRock's records request letters.

Here's a few examples

- [California](https://www.muckrock.com/foi/california-52/rejected-personalized-aka-vanity-license-plates-in-2013-department-of-motor-vehicles-11655/)
- [Oregon](https://www.muckrock.com/foi/oregon-158/rejected-personalized-aka-vanity-license-plates-in-2013-oregon-11590/)
- [Virginia](https://www.muckrock.com/foi/virginia-128/list-of-all-rejected-personalized-virginia-license-plates-in-2013-9837/)



# Todos


## General

- [x] Create a spreadsheet showing progress for all 50 states (and D.C.): [checklist.csv](checklist.csv)
- [x] Draft a template public records request letter to send out


## Governmentattic.org

Data stored in [data/governmentattic.org/](data/governmentattic.org/)

- [x] Fetch PDFs from [governmentattic.org listing](http://www.governmentattic.org/StateDMV-ForbidPlates.html)

  ```sh
  mkdir -p data/governmentattic.org/fetched
  wget -r --level 2 --no-directories \
    --accept-regex '/[A-Z]{2}-' \
    --directory-prefix data/governmentattic.org/fetched \
    http://www.governmentattic.org/StateDMV-ForbidPlates.html
  ```

- [ ] OCR governmentattic.org's collection with ABBYY
- [ ] Parse and wrangle the OCR'ed data for each state



## Muckrock.com

- [ ] Find all requests made by MuckRock
- [ ] Fetch data from MuckRock
- [ ] Parse and wrangle data
