// Proleptic Gregorian calendar with astronomical year numbering: year 0 exists.
// BigInt arithmetic keeps daycounts exact beyond JavaScript Date's range.
export const MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
export const WEEKDAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
export const isLeapYear = year => year % 4n === 0n && (year % 100n !== 0n || year % 400n === 0n);
export const daysInMonth = (year, month) => [31, isLeapYear(year) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
export function parseDaycount(value) {
  const text = String(value).trim();
  if (!/^\d{1,30}$/.test(text)) throw new RangeError('Enter a whole number from 0, using up to 30 digits.');
  return BigInt(text);
}
export function dateFromDaycount(daycount) {
  if (typeof daycount !== 'bigint' || daycount < 0n) throw new RangeError('Daycount must be a non-negative BigInt.');
  let year = daycount / 146097n * 400n;
  let remaining = Number(daycount % 146097n);
  while (remaining >= (isLeapYear(year) ? 366 : 365)) {
    remaining -= isLeapYear(year) ? 366 : 365;
    year++;
  }
  let month = 0;
  while (remaining >= daysInMonth(year, month)) {
    remaining -= daysInMonth(year, month);
    month++;
  }
  return { year, month, day: remaining + 1 };
}
export function daycountFromDate(year, month, day) {
  if (typeof year !== 'bigint' || year < 0n || !Number.isInteger(month) || month < 0 || month > 11 || !Number.isInteger(day) || day < 1 || day > daysInMonth(year, month)) throw new RangeError('Invalid date.');
  let count = year / 400n * 146097n;
  const cycleYear = Number(year % 400n);
  for (let y = 0; y < cycleYear; y++) count += isLeapYear(BigInt(y)) ? 366n : 365n;
  for (let m = 0; m < month; m++) count += BigInt(daysInMonth(year, m));
  return count + BigInt(day - 1);
}
export const weekdayFromDaycount = daycount => Number((daycount + 6n) % 7n);
