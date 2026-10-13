import { MONTHS, WEEKDAYS, parseDaycount, dateFromDaycount, daycountFromDate, weekdayFromDaycount, daysInMonth } from './date.js';

const input = document.getElementById('daycount');
const error = document.getElementById('daycountError');
const storageKey = 'beehave.calendar.daycount';
let selected;
let visibleYear;
let visibleMonth;

function renderMonth() {
  document.getElementById('monthTitle').textContent = `${MONTHS[visibleMonth]} · Year ${visibleYear}`;
  document.getElementById('previousMonth').disabled = visibleYear === 0n && visibleMonth === 0;
  const firstDaycount = daycountFromDate(visibleYear, visibleMonth, 1);
  const offset = (weekdayFromDaycount(firstDaycount) + 6) % 7; // Monday-first grid.
  const days = daysInMonth(visibleYear, visibleMonth);
  const rows = [];
  for (let row = 0; row < Math.ceil((offset + days) / 7); row++) {
    const tr = document.createElement('tr');
    for (let column = 0; column < 7; column++) {
      const day = row * 7 + column - offset + 1;
      const td = document.createElement('td');
      if (day < 1 || day > days) td.className = 'empty-day';
      else {
        td.textContent = day;
        td.setAttribute('aria-label', `${MONTHS[visibleMonth]} ${day}, Year ${visibleYear}`);
        if (selected.year === visibleYear && selected.month === visibleMonth && selected.day === day) {
          td.className = 'selected-day';
          td.setAttribute('aria-selected', 'true');
          td.setAttribute('aria-label', `${td.getAttribute('aria-label')}, converted date`);
        }
      }
      tr.append(td);
    }
    rows.push(tr);
  }
  document.getElementById('calendarDays').replaceChildren(...rows);
}
function convert() {
  let daycount;
  try { daycount = parseDaycount(input.value); }
  catch (cause) {
    error.textContent = cause.message;
    error.hidden = false;
    input.setAttribute('aria-invalid', 'true');
    input.focus();
    return;
  }
  error.hidden = true;
  input.removeAttribute('aria-invalid');
  input.value = daycount.toString();
  selected = dateFromDaycount(daycount);
  visibleYear = selected.year;
  visibleMonth = selected.month;
  document.getElementById('resultDate').textContent = `${MONTHS[selected.month]} ${selected.day}, Year ${selected.year}`;
  document.getElementById('resultWeekday').textContent = WEEKDAYS[weekdayFromDaycount(daycount)];
  document.getElementById('resultDaycount').textContent = `Daycount ${daycount}`;
  renderMonth();
  Beehave.write(storageKey, input.value);
}
document.getElementById('daycountForm').addEventListener('submit', event => { event.preventDefault(); convert(); });
input.addEventListener('input', () => { error.hidden = true; input.removeAttribute('aria-invalid'); });
document.getElementById('previousMonth').addEventListener('click', () => {
  if (visibleYear === 0n && visibleMonth === 0) return;
  if (visibleMonth === 0) { visibleMonth = 11; visibleYear--; } else visibleMonth--;
  renderMonth();
});
document.getElementById('nextMonth').addEventListener('click', () => {
  if (visibleMonth === 11) { visibleMonth = 0; visibleYear++; } else visibleMonth++;
  renderMonth();
});
document.getElementById('showSelected').addEventListener('click', () => {
  visibleYear = selected.year;
  visibleMonth = selected.month;
  renderMonth();
});
try { input.value = parseDaycount(Beehave.read(storageKey, '0')).toString(); }
catch { input.value = '0'; }
convert();
