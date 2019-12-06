# King County home sale prices in 2018



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
* Using python to execute sql and export [residential house csv file](/data/processed/residential_prices.csv).

* Using python to build a linear regression model with a target variable of home sale price with our note and data visualization. 
    + To deal with categorical variables, use OneHotEncoder in [sklearn](https://scikit-learn.org/stable/)
    + To build a linear regression model, use [statsmodels](https://pypi.org/project/statsmodels/)
    + To visualize descriptive statistics, use [matplotlib](https://matplotlib.org/) and [seaborn](https://seaborn.pydata.org/) 

## Process
* Use POSTGRES SQL engine to query residential house price
    + Sale Price more than 0
    + Principal Use is residential
    + ZipCode is not null
 
* Use OneHotEncoder to encode categorical features as a one-hot numeric array;
* Observe sale price distribution and drop the unreasonable sale price data(less than 50,000 USD);
* Check 3 claims about housing prices 
1. Higher square footage increases home sale price<sup>1, 2</sup>
2. Having a porch increases home sale price<sup>3, 4</sup>
3. Having a beachfront or lakefront increases home sale price<sup>5</sup>

* Adding more features to the model and check there is no high correlation between features.
    
* Visualize error distribution of the model, predicted sale price distribution, predicted and actual sale price distribution


## DELIVERABLES
* [`src/`](/src) directory stores all relevant source code.
* [`data/`](data) stores all relevant raw and processed data files.
* [`/references/figures`](/references/figures) includes all relevant visualization figures.
* [`src/sql`](/src/sql) includes all relevant SQL queries.
* [`references`](/references) stores useful references

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

1. Gomez, J. 2019. "8 critical factors that influence a home’s value". OpenDoor. Available at: https://www.opendoor.com/w/blog/factors-that-influence-home-value
2. Buczynski, B. 2019. "5 Proven Ways to Increase Home Value". NerdWallet. Available at: https://www.nerdwallet.com/blog/mortgages/how-to-increase-home-value/
3. Taylor, A.B. 2019. "11 Features That Will Sell Your Home Faster". Kiplinger. Available at: https://www.kiplinger.com/slideshow/real-estate/T010-S001-home-features-today-s-buyers-want-most/index.html
4. Crow, S. 2019. "50 Clever Ways to Instantly Add Value to Your Home". BestLife. Available at: https://bestlifeonline.com/home-value-upgrades/
5. Unknown author. 2018. "5 Features That Make A Property Valuable". House Flipping School. Available at: https://houseflippingschool.com/5-features-valuable/
6. Ludwick, R. 2019. Personal correspondence.
7. Yeh, K. "Duplex vs. Single-Family Home: What's the difference and which one should I invest in?". Homebuyer's School by Brookfield Residential. Available at: https://stories.brookfieldresidential.com/homebuyersschool/duplex-vs.-single-family-home-whats-the-difference-and-which-one-should-i-invest-in
8. "This is What Could Happen to Your Resale Value if You Add an Accessory Dwelling Unit (ADU) to Your Silicon Valley Property". Acton ADU. Available at: https://actonadu.com/blog/this-is-what-could-happen-to-your-resale-value-if-you-add-an-accessory-dwelling-unit-adu-to-your-silicon-valley-property
9. "What is the CRISP-DM Methodology?" Smart Vision Europe. Available at: https://www.sv-europe.com/crisp-dm-methodology/