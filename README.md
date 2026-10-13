# Beehave Corp

A Minecraft styled desktop with Calendar as its only app. Calendar converts an elapsed daycount into a date and highlights it in a monthly calendar.

## Structure

- `index.html`, `index.js`: main desktop launcher.
- `manifest.json`: desktop app list.
- `calendar/index.html`, `calendar/index.js`, `calendar/index.css`: Calendar app and its own script and styles.
- `calendar/date.js`: date conversion logic.
- `settings/index.html`, `settings/index.js`: system settings page and its own script.
- `preferences.js`, `ui.js`: shared appearance preferences and notifications.
- `styles/`: shared Minecraft styling and Corp layout.
- `media/calendar.svg`: local Calendar icon.
- `icon.png`: favicon shared by every page.
- `tools/build-pages.mjs`: static deployment build.
- `tests/calendar.test.mjs`: date calculation tests.

Apps live directly in their own folders beside the main HTML, following Techtoby Corp's structure. Each app keeps its own scripts in its folder. Settings is accessible through the desktop and app header; the desktop app list contains only Calendar. `beehave.html` redirects old site links to the desktop.

## Calendar rules

Day 0 is **January 1, year 0**. The calendar uses astronomical year numbering and Gregorian leap-year rules, extended back to year 0. Years divisible by 4 are leap years, except century years unless divisible by 400. Year 0 is therefore a leap year.

Examples: day 31 is February 1 of year 0, day 59 is February 29 of year 0, and day 366 is January 1 of year 1. The month view starts on Monday and follows Gregorian weekdays; January 1 of year 0 is Saturday.

Inputs must be non-negative whole numbers of up to 30 digits. BigInt arithmetic preserves exact values, with no timezone or daylight-saving adjustments. The last converted daycount and appearance preferences are stored in this browser.

## Development and deployment

Run `npm test` to check leap days, century rules, year-zero boundaries, input validation, and large daycounts. Run `npm run build` to generate `dist/` containing only the website and validate its routes and asset sizes. No npm dependencies are required.

Serve the built site with `python -m http.server 8765 --directory dist` and open `http://localhost:8765/`.

In your Cloudflare Pages project's **Settings → Builds & deployments → Build configurations**, set:

- Framework preset: **None**.
- Root directory: leave blank.
- Build command: **`npm run build`**.
- Build output directory: **`dist`**.

Save the settings before deploying. Adding `package.json` does not automatically configure an existing Pages project's build command. `dist/` is generated and ignored by Git.

Fonts and texture references retain their original remote sources, including the Minecraft Wiki. Minecraft is a trademark of Microsoft/Mojang. This project is independent and unaffiliated.
