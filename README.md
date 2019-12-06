# Housing prices in King County in 2018

This project offers an updated estimate of the number of Opportunity Youth in South King County using the 2017 5-year American Community Survey [(ACS)](https://www.census.gov/programs-surveys/acs/about.html) Public Use Microdata Survey [(PUMS)](https://www.census.gov/programs-surveys/acs/technical-documentation/pums.html).

## Findings

Many factors influence the saleprice of homes. According to expert opinions (cited below), specifically square footage, porches, and waterfront property increases a home's saleprice. 

From our model, we have determined that several factors increase the salesprice of a home.

    1. Square foot of total living
    2. Waterfront footage
    3. Traffic noise
    4. Full baths
    5. Additional cost
    6. Sewer system
    7. Inadequate parking 
    8. Age of house
    9. Porch
    10. Waterfront location


### The higher square footage increases home sale price.
We determined that the square footage of a home is directly correlated with the sale price. From our model, each square foot in the house increases the saleprice by $375

### Having a porch increase home sale price.
Our model predicts that having a porch increases saleprice by $36,000.

### Having a beachfront or lakefront increase home sale price.
It depends where the home is located. A home by Lake Sammamish can sell for an additional $3.5 million while a home by the Puget Sound has a decreased value and is predicted to sell for $47,000 less.



## Methodology

* Download data from the [King County House Sales dataset](https://info.kingcounty.gov/assessor/DataDownload/default.aspx).The tables required for this analysis are:
    + Real Property Sales
    + Residential Building
    + Parcel
* Create housing_prices [PostgreSQL database](https://www.postgresql.org/) ;
* Query residential house data with SQL;
* Using Jupyter Notebook to execute sql and export residential house csv file.

* Using python to build a linear regression model with a target variable of home sale price with our note and data visualization. 
    + To deal with categorical variables, use OneHotEncoder in [sklearn](https://scikit-learn.org/stable/)
    + To build a linear regression model, use [statsmodels](https://pypi.org/project/statsmodels/)
    + To visualize descriptive statistics, use [Matplotlib](https://matplotlib.org/) and [seaborn](https://seaborn.pydata.org/) 

## Process
* A map that visualizes which parts of King County are a part of South King County;
* Estimated number of opportunity youth in South King County from US Census PUMS data in 2017([2017 PUMS README](references/ACS2013_2017_PUMS_README.pdf), [2017 PUMS Data Dictionary](references/PUMS_Data_Dictionary_2017.pdf)). Variables includes:                
    + Age (AGEP)
    + Educational attainment (SCHL)
    + Employment status recode(ESR)
    + Housing unit/GQ person serial number (SERIALNO)
    + Person number (SPORDER) 
    + Person’s weight (PWGTP)(note: this is statistical weight)
    + PUMA is in South King County. Public use microdata area code (PUMA) based on 2010 Census definition    
    + School enrollment (SCH)


## DELIVERABLES
* [`src/`](/src) directory stores all relevant source code.
* [`data/`](data) stores all relevant raw and processed data files.
* [`src/visualization/`](src/visualization/) includes all relevant visualization figures.
* [`src/sql`](/src/sql) includes all relevant SQL queries.

## Setup Instructions

To download the necessary data, please run the following command:

```bash
# installs necessary requirements and downloads necessary data
# note: this may take anywhere from 10-20 minutes
sh setup.sh
```

### `oy-env` conda environment

This project relies on you using the [`environment.yml`](environment.yml) file to recreate the `oy-env` conda environment. To do so, please run the following commands:

```bash
# create the oy-env conda environment
# note: this make take anywhere from 10-20 minutes
conda env create -f environment.yml

# activate the oy-env conda environment
conda activate oy-env

# make oy-env available to you as a kernel in jupyter
python -m ipykernel install --user --name oy-env --display-name "oy-env"
```

## Citations

* <sup>1</sup> Yohalem, N., Cooley, S. 2016. “Opportunity Youth in the Road Map Project Region”. Community Center for Education Results. Available at: https://bit.ly/2P2XRF3. 

* <sup>2</sup> Anderson, T., Braga, B., Derrick-Mills, T., Dodkowitz, A., Peters, E., Runes, C., and Winkler, M. 2019. “New Insights into the Back on Track Model’s Effects on Opportunity Youth Outcomes”. Urban Institute. Available at: https://bit.ly/2BuCLr1. 

* <sup>3</sup> Seattle Region Partnership. 2016. “King County Opportunity Youth Overview: Demographics of opportunity youth and systemic barriers to employment”. https://bit.ly/2oRGz37. 

* <sup>4</sup> Morton, N. 2019. “Nearly 19,000 youth in King County are neither working nor in school. How one Seattle nonprofit is changing that.” The Seattle Times. Available at: https://bit.ly/2W5EufR. 