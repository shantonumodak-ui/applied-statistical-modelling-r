# Data Dictionaries

All three datasets are committed in full — each is under 300 KB, so the analyses
are reproducible immediately after cloning with no download step.

---

## `underground_temperatures.csv`

London Underground network temperature readings, 2013–2024. **1,153 observations.**

| Variable | Type | Description |
|----------|------|-------------|
| `ID` | chr | Unique observation identifier (`TFL#####`) |
| `Year` | int | Year of measurement (2013–2024) |
| `Month` | chr | Month of measurement |
| `Line` | chr | Underground line name |
| `Temp` | dbl | Temperature in degrees Celsius |

*Note:* sub-surface lines are excluded during analysis — they are naturally
ventilated and not comparable to deep-tube lines.

---

## `household_expenditure.csv`

Weekly household expenditure survey, England. **4,097 observations.**
All monetary values are average weekly amounts in GBP.

| Variable | Type | Description |
|----------|------|-------------|
| `Food` | dbl | Weekly spend on food and non-alcoholic beverages (£) |
| `Alcohol` | dbl | Weekly spend on alcoholic beverages (£) |
| `Debt` | dbl | Weekly debt service payments — credit cards, loans (£) |
| `Housing` | dbl | Weekly accommodation costs — mortgage or rent (£) |
| `HouseholdSize` | int | Total individuals living in the household |
| `Kids` | int | Number of dependent children |
| `Vehicles` | int | Total vehicles owned |
| `Sex` | chr | Sex of survey respondent (male/female) |
| `income_category` | chr | Income classification (Low/Medium/High) |

---

## `podcast_listens.csv`

Podcast performance metrics across four streaming platforms. **5,400 observations.**

| Variable | Type | Description |
|----------|------|-------------|
| `Platform` | chr | Streaming platform (Apple Podcasts, Spotify, BBC Sounds, YouTube) |
| `genre` | chr | Content category (Comedy, News & Culture, Documentary) |
| `avg.review` | dbl | Average user rating (1–5 scale) |
| `daily.listens` | dbl | Average listens per day |
| `total.reviews` | int | Total user reviews submitted |
| `subscribers` | dbl | Number of subscribers |
