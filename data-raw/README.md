# Raw data and processing scripts

- `climateBC` Data extracted from ClimateBC v7.30, see
  [climateBC/README.md](climateBC/README.md)

- `locations` Data extracted from `picolaDataFlowering` and formatted for
  climateBC, see [locations/README.md](locations/README.md)

- `pcic` Data downloaded from Pacific Climate Impacts Consortium, see
  [pcic/README.md](pcic/README.md)

- `picola_SPU_climsum.csv` Summaries of climate variables for different SPUs.
  Received in Jan 9, 2013 email from Tongli Wang. I added a column of SPU
  numbers based on the Tree Improvement Branch Website list of Lodgepole SPUs.

- `adjustPCIC.R` Takes data for PCIC data gridpoints near sites and corrects it
  using a linear model between monthly data at the sites as determined by
  ClimateBC and the mean of the PCIC data at the nearest gridpoint. Writes
  `picola_PNWNAmet_adjusted.csv`. Correction formula is:
    ``` 
    climateBC monthly site temp = a + b * pcic monthly grid temp
    corrected pcic daily = a + b * pcic daily temp
    ```

- `timeseries_for_prediction.R` Merges adjusted PCIC data with historical and
  future predicted ClimateBC data and writes `picola_typical_ts.csv` and
  `picola_normal_daily.csv`.

- `build_all.R` Runs all other scripts sequentially.

- Other R scripts correspond to specific exported datasets, one script per
  dataset.