import test from 'node:test';
import assert from 'node:assert/strict';
import { dateFromDaycount, daycountFromDate, weekdayFromDaycount, parseDaycount, daysInMonth } from '../calendar/date.js';

test('year zero and leap day boundaries', () => {
  for (const [count, year, month, day] of [
    [0n, 0n, 0, 1], [31n, 0n, 1, 1], [58n, 0n, 1, 28],
    [59n, 0n, 1, 29], [60n, 0n, 2, 1], [365n, 0n, 11, 31],
    [366n, 1n, 0, 1], [146096n, 399n, 11, 31], [146097n, 400n, 0, 1]
  ]) assert.deepEqual(dateFromDaycount(count), { year, month, day });
  assert.equal(weekdayFromDaycount(0n), 6);
  assert.equal(weekdayFromDaycount(366n), 1);
  assert.equal(daysInMonth(100n, 1), 28);
  assert.equal(daysInMonth(400n, 1), 29);
});

test('conversion matches independent UTC dates across leap years and centuries', () => {
  const epoch = new Date(0);
  epoch.setUTCFullYear(0, 0, 1);
  epoch.setUTCHours(0, 0, 0, 0);
  const samples = [0, 59, 60, 365, 366, 36524, 36525, 146096, 146097];
  let random = 42;
  for (let i = 0; i < 2000; i++) {
    random = (random * 1664525 + 1013904223) >>> 0;
    samples.push(random % 8000000);
  }
  for (const count of samples) {
    const expected = new Date(epoch.getTime() + count * 86400000);
    const actual = dateFromDaycount(BigInt(count));
    assert.deepEqual(actual, { year: BigInt(expected.getUTCFullYear()), month: expected.getUTCMonth(), day: expected.getUTCDate() }, `daycount ${count}`);
    assert.equal(weekdayFromDaycount(BigInt(count)), expected.getUTCDay());
    assert.equal(daycountFromDate(actual.year, actual.month, actual.day), BigInt(count));
  }
});

test('large daycounts retain precision and round-trip exactly', () => {
  for (const count of [9007199254740991n, 9007199254740992n, 9007199254740993n, 123456789012345678901234567890n, 999999999999999999999999999999n]) {
    const { year, month, day } = dateFromDaycount(count);
    assert.equal(daycountFromDate(year, month, day), count);
  }
});

test('reject invalid input and impossible dates', () => {
  assert.equal(parseDaycount(' 00059 '), 59n);
  for (const value of ['', '-1', '1.5', '1e6', '+2', 'NaN', 'a', '1'.repeat(31)]) assert.throws(() => parseDaycount(value), RangeError);
  assert.throws(() => dateFromDaycount(-1n), RangeError);
  assert.throws(() => daycountFromDate(-1n, 0, 1), RangeError);
  assert.throws(() => daycountFromDate(1n, 1, 29), RangeError);
});
