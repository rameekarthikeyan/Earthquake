Earthquake Visualization App
==========

This is a simple app which summarizes the number of earthquakes occurred in selected hemisphere for the period of January 1, 2000 to 2015. It also provides additional information of the highest magnitude Earthquake happened in that hemisphere and the place where it happened. App displays the numeric results as well as map and histogram. The data is sourced from the USGS website for the period of January 1, 2000 to 2015.

How it works:
Data is downloaded and stored in local directory and then it is loaded to R. Subset of the data is identified by user inputs of minimum Earthquake magnitude scale and hemisphere. Number of earthquakes is calculated from the subset.

Instructions for using the app:
Initially when the app is loaded, values, map and plot are rendered only after clicking the 'submit' button. It will take a while to render the values after clicking the 'submit' button for the first time. 

First, select the earthquake magnitude by using the slider. This will set the minimum for Earthquake magnitude scale above which the data will be considered for summarization.For example, if the slider is set at 6.5, then all Earthquakes of magnitude 6.5 and above are considered for summarization. The default value for the slider is 7. 

Second, select the hemisphere where summarization is desired. The default value of hemisphere is 'Eastern'. 

Third, click the 'submit' button. Results will appear for the selected hemisphere with the slider value set as minimum for the Earthquake magnitude scale.
