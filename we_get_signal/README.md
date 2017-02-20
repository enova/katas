# We Get Signal

!["We get signal." "What!" - Zero Wing](http://www.yougetsignal.com/about/img/we_get_signal.jpg)

Since the 70's, Unix has used [signals](https://en.wikipedia.org/wiki/Unix_signal) to notify processes of different events, such as mathematical errors (e.g. divide by zero), process interrupts or termination, segmentation faults, etc. The Ruby core library provides the [Signal](http://ruby-doc.org/core-2.2.0/Signal.html) module for detecting and acting upon these events.

We've got a long-running daily cron job [weather_reporting_job.rb](weather_reporting_job.rb) on our server. It queries a weather service in batches and calculates the historical high and low temperatures for a given day of the year.

Unfortunately, the server has a habit of occasionally restarting during this job, sending the `SIGTERM` signal to the job. By default, this signal causes the Ruby script to terminate and lose all of the work it has made so far.

Modify this script to check for the `SIGTERM` signal. If the signal is recognized, we should save the following information to the temporary file at `.temp_filename`:

* the current page index
* the total highs and lows
* the min/max highs and lows

If the job is run again on the same day, it should load the data from the file, and start again where it left off.
