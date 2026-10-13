# COVID-19 Statistics Algorithms

A C++ data-analysis project that applies classical algorithms to World Health Organization COVID-19 data to answer ranking, trend, allocation, and similarity questions.

[![C++ checks](https://github.com/SameetAsadullah/Covid-Stats-Algorithms/actions/workflows/quality.yml/badge.svg)](https://github.com/SameetAsadullah/Covid-Stats-Algorithms/actions/workflows/quality.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Analyses

| Query | Technique |
|---|---|
| Top 20 countries by confirmed cases on a date | Priority queue / heap |
| Highest new-case count in a date range | Priority queue and date filtering |
| Longest increasing spread period | Longest increasing subsequence |
| Longest decline in daily deaths | Longest decreasing subsequence |
| Highest-scoring aid allocation under a capacity | 0/1 knapsack |
| Similarity between two national response series | Longest common subsequence |

## Repository layout

- `src/main.cpp` — interactive query menu
- `src/q1.h` through `src/q6.h` — the six analysis implementations
- `src/functions.h` — shared validation and display helpers
- `src/WHO-COVID-19.csv` — input observations
- `src/CountryWeight.csv` — weights used by the aid-allocation query
- `extras/` — example program output

`src/graphs.cpp` is retained as a separate early edit-distance experiment and is not part of the main Visual Studio target.

## Build and run

```bash
cd src
g++ -std=c++17 -O2 main.cpp -o covid-stats
./covid-stats
```

Run the executable from `src/` so it can locate the CSV inputs. Visual Studio users can instead open `src/Project.sln`.

## Data

The included `WHO-COVID-19.csv` is a historical snapshot used by the original university assignment. Replace it with data using the same column layout to explore another snapshot. Results should be understood in the context of the dataset date and are not current public-health guidance.

## Screenshots

| Menu | Query result | Analysis result |
|---|---|---|
| ![Program menu](extras/working-ss-1.png) | ![Query result](extras/working-ss-2.png) | ![Analysis result](extras/working-ss-3.png) |

## Project status

This repository preserves the original algorithm implementations while improving build portability, documentation, and repository hygiene.

## License

Released under the [MIT License](LICENSE).
