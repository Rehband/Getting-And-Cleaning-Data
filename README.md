## Class Project for "Getting and Cleaning Data"  

The class project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata) was to read in the 
"Human Activity Recognition Using Smartphones" data set,
perform an analysis on the data set, and output a tidy data set.

This file indicates **the various parts of the project:**

* `CodeBook.md` - the code book, describing the variables in the tidy data set
* `run_analysis.R` - the R script, to load the raw data, convert, and 
create the tidy data from the raw data
* `TidyData.txt` - the output of the R script

The R script requires the [reshape2 package](http://cran.r-project.org/web/packages/reshape2/index.html), 
which can be downloaded from CRAN. The asumption is that the original data (*UCI HAR Dataset* folder) 
and the R script are in the same directory.

You can read more about the data and the analysis in the [code book](CodeBook.md).

References
----------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their 
institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


