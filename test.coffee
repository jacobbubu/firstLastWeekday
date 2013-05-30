firstLastWeekDay = require './lib/index'

weekDay = 
  'Sun': 0
  'Mon': 1
  'Tue': 2
  'Wed': 3
  'Thu': 4
  'Fri': 5
  'Sat': 6

d = new Date('2013-05-30')

console.log '--- First func set with date ', d.toDateString()
for weekDayName, value of weekDay
  funcName = 'first' + weekDayName
  console.log funcName + ' is ' + firstLastWeekDay[funcName](d).toDateString()

console.log '--- Last func set with date ', d.toDateString()
for weekDayName, value of weekDay
  funcName = 'last' + weekDayName
  console.log funcName + ' is ' + firstLastWeekDay[funcName](d).toDateString()