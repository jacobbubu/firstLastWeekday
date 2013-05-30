firstLastWeekDay = {}

weekDay = 
  'Sun': 0
  'Mon': 1
  'Tue': 2
  'Wed': 3
  'Thu': 4
  'Fri': 5
  'Sat': 6

for weekDayName, value of weekDay
  firstLastWeekDay['last' + weekDayName]	= ( (weekDayValue)->
    (specifiedDate) ->
      result = new Date(specifiedDate.getTime())
      diff = result.getDay() - weekDayValue
      diff = diff + 7 if diff < 0
      result.setDate result.getDate() - diff
      result
  )(value)

  firstLastWeekDay['first' + weekDayName]  = ( (weekDayValue)->
    (specifiedDate) ->
      result = new Date(specifiedDate.getTime())
      diff = weekDayValue - result.getDay()
      diff = diff + 7 if diff < 0
      result.setDate result.getDate() + diff
      result
  )(value)
  
module.exports = firstLastWeekDay

