# Codebook: Taiwan Outbound Travel Statistics (2002-2024)

## Overview
This dataset contains statistics on the number of Taiwanese citizens traveling abroad by year and destination from 2002 to 2024. The data includes the first destination of arrival and categorizes travel locations by region and country. This analysis focuses on the top 15 destinations based on travel volume.

## Variables

| Variable Name        | Class      | Meaning                                      | Example Values |
|----------------------|-----------|----------------------------------------------|----------------|
| `首站抵達地`         | Factor | The general region where the traveler first arrives. | "亞洲地區" (Asia), "美洲地區" (Americas) |
| `細分`              | Factor | The specific country or area within the region. | "日本" (Japan), "韓國" (Korea) |
| `Year`              | Integer | The year of travel data recorded.           | "2002", "2019" |
| `Number of Travelers` | Integer | The number of Taiwanese travelers visiting a destination in a given year. | "797,460" (Japan in 2002), "4,911,681" (Japan in 2019) |

## Data Format
- The dataset is structured in tabular form, where each row represents a destination and its corresponding traveler numbers across years.
- Missing or unavailable values may be represented by `-`.

## Brief Description
This dataset provides insights into the travel patterns of Taiwanese citizens over two decades. It covers various regions and countries, illustrating fluctuations due to factors such as economic conditions, travel policies, and global events like the COVID-19 pandemic. Trends in outbound travel behavior can be analyzed to understand shifts in preferred destinations. The analysis is limited to the top 15 destinations with the highest travel volume.

## Notes
- Data is subject to change based on updates and revisions from official sources.
- The impact of global events (e.g., COVID-19 in 2020-2022) can be seen in travel fluctuations.

---
**Source**: Taiwanese government travel statistics

