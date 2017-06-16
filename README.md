eyeCode
=======

<img src="img/eyecode_logo-small.png" />

A Python library for analyzing programmer gaze data built on top of [pandas](http://pandas.pydata.org/) and [scipy](http://www.scipy.org).
The library has the following high-level components:

* Data from real experiments
* Area of interest (AOI) creation and hit-testing
* Commonly-used fixation metrics
* Domain-specific visualizations
* Functions for automatically annotating fixations and grading responses

[<a href="http://synesthesiam.github.io/eyecode/">View Documentation</a>]


Running with Docker
===================

You can run eyeCode with Docker:

* Open a shell in this directory
* Build the container: `docker build -t eyecode-docker .` (All contents of this directory will be copied to `/home/eyecode` in the container, and your working directory will be `/home`)
* Run the container interactively: `docker run -it eyecode-docker` (Alternatively, you can mount a local directory as well: `docker run -it -v C:\dir:/home/dir eyecode-docker`)
* Press `Ctrl + D` when finished to exit the Python interpreter