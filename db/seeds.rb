# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@article.com', password: 'administrator', password_confirmation: 'administrator', role: 'admin')

Article.create(heading: "Hardware Rennaisance. A blog by Paul Graham. Copied from http://www.paulgraham.com/hw.html",
               content:
 %{
One advantage of Y Combinator's early, broad focus is that we
see trends before most other people.  And one of the most conspicuous
trends in the last batch was the large number of hardware startups.
Out of 84 companies, 7 were making hardware.  On the whole
they've done better than the companies that weren't.<br><br>They've faced resistance from investors of course.  Investors have
a deep-seated bias against hardware.  But investors' opinions are
a trailing indicator.  The best founders are better at seeing the
future than the best investors, because the best founders are making
it.<br><br>There is no one single force driving this trend.  Hardware <a
href="http://bits.blogs.nytimes.com/2012/05/11/pebble-smartwatch-tops-out-at-10-million-on-kickstarter/">does
well</a> on crowdfunding sites.  The spread of <a
href="http://paulgraham.com/tablets.html">tablets</a> makes it
possible to build new things <a href="http://lockitron.com">controlled
by</a> and even <a href="http://doublerobotics.com">incorporating</a>
them.  <a href="http://www.boostedboards.com/">Electric motors</a>
 have improved.
Wireless connectivity of various types can now be taken for granted.
It's getting more straightforward to get things manufactured.
Arduinos, 3D printing, laser cutters, and more accessible CNC milling are making hardware easier to prototype.
Retailers are less of a bottleneck as customers increasingly buy
online.<br><br>One question I can answer is why hardware is suddenly cool.
It always was cool.
Physical things are great.  They just haven't
been as great a way to start a <a
href="growth.html">rapidly growing</a> business
as software.  But that rule may not be permanent.  It's not even
that old; it only dates from about 1990.  Maybe the advantage
of software will turn out to have been temporary.  Hackers love to
build hardware, and customers love to buy it.  So if the ease of
shipping hardware even approached the ease of shipping software,
we'd see a lot more hardware startups.<br><br>It wouldn't be the first time something was a bad idea till it
wasn't.  And it wouldn't be the first time investors learned that
lesson from founders.<br><br>So if you want to work on hardware, don't be deterred from doing
it because you worry investors will discriminate against you.  And
in particular, don't be deterred from <a
href="http://ycombinator.com/apply.html">applying</a> to Y Combinator
with a hardware idea, because we're especially interested in hardware
startups.<br><br>We know there's room for the <a href="ambitious.html">next Steve Jobs</a>.
But there's almost certainly also room for the first 
&lt;Your Name Here&gt;.<br><br><br><br><br><br>
<b>Thanks</b> to Sam Altman, Trevor Blackwell, David Cann, Sanjay Dastoor, 
})
