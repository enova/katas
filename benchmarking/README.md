# Benchmarking

Full-stack developers, even those who work primarily on back-end, will occasionally have to step in and write some UI code.  This often involves writing Javascript code.

We have a couple [JS functions](app.js) that help set up our [user interface](index.html).  `disableCurrentUserButtons` ensures that the current user cannot edit or delete themselves.  `prepareUserButtons` sets up the code behind the 'Edit' and 'Delete' buttons.  They currently are not operating very efficiently.  How could we improve their efficiency?  Can we improve the efficiency of any other aspect of the page?
