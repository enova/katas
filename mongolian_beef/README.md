# Mongolian Beef

( Modestly adapted from the problem statement [here](http://www.reddit.com/r/dailyprogrammer/comments/11xyiz/10232012_challenge_106_difficult_mongolian_grill/). )

This one's going to take some time, so buckle in. 

Everyone loves Mongolian Grill until the line gets long. But how long do you have to wait really?

You take a bowl and visit any number of vegetable, meat, noodle, and sauce ingredient stations to build your own custom stir fry meal. Once you have your ingredients picked out, you get in line to have your meal cooked on an open grill before you. As would be expected, people spend a little time at each station in order to take ingredients. The cook time takes a few minutes, but the chefs can cook several meals on the grill at the same time.

Your task is to estimate the average time it takes to prepare a meal per customer. Customers will want dishes composed of 5 random ingredients. Assume it takes 10 seconds to take an ingredient from one of 20 stations and only 1 person can be at a station at once. Assume also that it takes 3 minutes for a meal to cook, but 8 meals can cook simultaneously. If the grill or a station is full, customers will wait in line until it is their turn.

Determine the average time to wait for the following:
* Only 1 customer
* 8 customers at the same time
* 25 customers at the same time
* 25 customers, staggered 1 minute apart
* 100 customers stampeding at the same time
* 100 customers, staggered 2 minutes apart

**Extra Credit:**
* Estimate the average time customers wait on the grill itself
* Estimate the average time customers wait on each of the 20 stations

**Super Extra Credit:**
* Write it with [Go](https://golang.org/), as the creator intended.
