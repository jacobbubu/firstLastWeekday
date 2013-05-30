# Overview # 

This module provides a tool to get the date of first or last weekday from a specified date.

I use it to parse the [Olson Timezone Rule File](http://www.iana.org/time-zones).

# Usage #

`npm install first-last-weekday`

``` Coffee
firstLastWeekDay = require './lib/index'

d = new Date('2013-05-30')

# firstSun ~ firstSat
console.log 'firstSun',  firstLastWeekDay.firstSun(d).toDateString()

# lastSun ~ lastSat
console.log 'lastSun',  firstLastWeekDay.lastSun(d).toDateString()

```

result:

```
firstSun Sun Jun 02 2013
lastSun Sun May 26 2013
```

Code written in Coffee-Script then compiled by grunt.

# License #

[MIT License](https://raw.github.com/michaelnisi/pushup/master/LICENSE)

