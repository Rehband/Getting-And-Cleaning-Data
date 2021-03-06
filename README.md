## Class Project for "Getting and Cleaning Data"  

The class project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata) was to read in the 
"Human Activity Recognition Using Smartphones" data set,
perform an analysis on the data set, and output a tidy data set.

This file indicates **the various parts of the project:**

* `CodeBook.md` - the code book, describing the variables in the tidy data set and work performed to clean up the data
* `run_analysis.R` - the R script, to load the raw data, convert, and create the tidy data from the raw data
* `TidyData.txt` - the output of the R script

The R script requires the [reshape2 package](http://cran.r-project.org/web/packages/reshape2/index.html), 
which can be downloaded from CRAN. The asumption is that the original data (*UCI HAR Dataset* folder) 
and the R script are in the same directory.

The steps for running the main script are the following:

1. Download the data from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Extract the `"UCI HAR Dataset"` into your working directory

3. Add the `"run_analysis.R"` script to your working directory

4. Run `source("run_analysis.R")`

Check out the working directory for the file `TidyData.txt`.

You can read more about the data and the analysis in the [code book](CodeBook.md).

References
----------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their 
institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


