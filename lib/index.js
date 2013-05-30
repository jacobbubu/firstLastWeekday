var firstLastWeekDay, value, weekDay, weekDayName;

firstLastWeekDay = {};

weekDay = {
  'Sun': 0,
  'Mon': 1,
  'Tue': 2,
  'Wed': 3,
  'Thu': 4,
  'Fri': 5,
  'Sat': 6
};

for (weekDayName in weekDay) {
  value = weekDay[weekDayName];
  firstLastWeekDay['last' + weekDayName] = (function(weekDayValue) {
    return function(specifiedDate) {
      var diff, result;

      result = new Date(specifiedDate.getTime());
      diff = result.getDay() - weekDayValue;
      if (diff < 0) {
        diff = diff + 7;
      }
      result.setDate(result.getDate() - diff);
      return result;
    };
  })(value);
  firstLastWeekDay['first' + weekDayName] = (function(weekDayValue) {
    return function(specifiedDate) {
      var diff, result;

      result = new Date(specifiedDate.getTime());
      diff = weekDayValue - result.getDay();
      if (diff < 0) {
        diff = diff + 7;
      }
      result.setDate(result.getDate() + diff);
      return result;
    };
  })(value);
}

module.exports = firstLastWeekDay;
