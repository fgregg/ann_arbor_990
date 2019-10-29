# Analysis of Ann Arbor Nonprofits using 990 data.

This repository makes a series of analyses and graph visualisatiosn of the Ann Arbor nonprofit landscape using data 
from the [tax forms that nonprofits submit to the IRS](https://en.wikipedia.org/wiki/Form_990).

## Steps:
1. This one is a doozy. [Build you a local database of 990 data](https://github.com/datamade/990-xml-database/blob/master/irsdb/Makefile). 
2. Clone this repo and go to the repo's directory
3. `pip install -r requirements.txt`
4. `make org.gml` This makes a file that represents the number of shared board members between Ann Arbor area nonprofits.

Using a program like [yEd](https://www.yworks.com/products/yed), you can open up `org.gml` and do graph analysis and make visualisations like below.

![Ann Arbor Board Interlock Visualisation](https://github.com/fgregg/ann_arbor_990/blob/master/Screenshot_2019-10-29%20org%20pdf.png)

