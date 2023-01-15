## 3.52.5 - 2022-04-04

## What's Changed

- Update savePdf to comply with 50eae92 by @marksalmon in https://github.com/spatie/browsershot/pull/622

## New Contributors

- @marksalmon made their first contribution in https://github.com/spatie/browsershot/pull/622

**Full Changelog**: https://github.com/spatie/browsershot/compare/3.52.4...3.52.5

## 3.52.4 - 2022-04-01

## What's Changed

- Improve exception output when output file is missing
- Use function arguments for `mobile` and `touch` by @orkhanahmadov in https://github.com/spatie/browsershot/pull/610
- Update Puppeteer GitHub link by @ioanschmitt in https://github.com/spatie/browsershot/pull/598
- Add missing 'to' by @ioanschmitt in https://github.com/spatie/browsershot/pull/599
- Fix typo by @noreason in https://github.com/spatie/browsershot/pull/604
- PHPUnit to Pest Converter by @freekmurze in https://github.com/spatie/browsershot/pull/611

## New Contributors

- @ioanschmitt made their first contribution in https://github.com/spatie/browsershot/pull/598
- @noreason made their first contribution in https://github.com/spatie/browsershot/pull/604
- @orkhanahmadov made their first contribution in https://github.com/spatie/browsershot/pull/610

**Full Changelog**: https://github.com/spatie/browsershot/compare/3.52.3...3.52.4

## 3.52.3 - 2021-12-17

## What's Changed

- Adding compatibility to Symfony 6 by @spackmat in https://github.com/spatie/browsershot/pull/589

## New Contributors

- @spackmat made their first contribution in https://github.com/spatie/browsershot/pull/589

**Full Changelog**: https://github.com/spatie/browsershot/compare/3.52.2...3.52.3

## 3.52.2 - 2021-12-14

- Add debug output to vague `CouldNotTakeBrowsershot` exception

**Full Changelog**: https://github.com/spatie/browsershot/compare/3.52.1...3.52.2

## 3.52.1 - 2021-11-24

## What's Changed

- Fix Apple Silicon Path Issue by @aerni in https://github.com/spatie/browsershot/pull/581

## New Contributors

- @aerni made their first contribution in https://github.com/spatie/browsershot/pull/581

**Full Changelog**: https://github.com/spatie/browsershot/compare/3.52.0...3.52.1

## Changelog

All notable changes to `Browsershot` will be documented in this file

## 3.52.0 - 2021-10-27

- Prevent unsuccessful response by @mikaelpopowicz in https://github.com/spatie/browsershot/pull/576

## 3.51.0 - 2021-10-27

- 🚀 Support PHP 8.1 by @Nielsvanpach in https://github.com/spatie/browsershot/pull/567
- Fix incorrect method reference in README by @intrepidws in https://github.com/spatie/browsershot/pull/570

## 3.50.2 - 2021-09-22

- fix `blockDomains` and `blockUrls` methods (#564)

## 3.50.1 - 2021-08-27

- fix browser.js to only abort or continue the request once (#548)

## 3.50.0 - 2021-08-21

- added functionality to only send headers with navigational requests (#542)

## 3.49.0 - 2021-08-05

- add support for the --user-data-dir flag (#540)

## 3.48.0 - 2021-07-28

- support spatie/image v2

## 3.47.0 - 2021-06-10

- re-add support for symfony/process:^4.2

## 3.46.0 - 2021-05-24

- add `base64pdf` method (#512)

## 3.45.0 - 2021-04-20

- add ability to make POST requests (#496)

## 3.44.1. - 2021-04-09

- bump temporary-directory to version 2.0 (#495)

## 3.44.0 - 2021-02-05

- add scale option (#478)

## 3.43.0 - 2021-01-29

- add support for scale option in PDF (#478)

## 3.42.0 - 2021-01-11

- introduce a selectorIndex to bypass querySelector restrictions (#468)

## 3.41.2 - 2020-12-27

- improve local require for puppeteer (#461)

## 3.41.1 - 2020-12-08

- replace `waitFor` with `waitForTimeout` (#452)

## 3.41.0 - 2020-19-11

- adding ability to pass envars to browser instance (#448)

## 3.40.3 - 2020-11-12

- add support for PHP 8

## 3.40.2 - 2020-11-11

- revert changes from previous version

## 3.40.1 - 2020-11-06

- prevent local files from being rendered

## 3.40.0 - 2020-10-07

- added `base64Screenshot`

## 3.39.0 - 2020-09-24

- add `usePipe` to use pipe instead of WebSocket (#423)

## 3.38.0 - 2020-09-22

- pass puppeteer to `callChrome()` (#399)

## 3.37.2 - 2020-07-22

- Replace emulateMedia call with emulateMediaType (#411)

## 3.37.1 - 2020-07-09

- account for the removal of require('puppeteer/DeviceDescriptors') (#406)

## 3.37.0 - 2020-06-17

- get the list of triggered requests (#402)

## 3.36.0 - 2020-04-19

- add use of WS Endpoint option (#390)

## 3.35.0 - 2020-03-03

- adds `blockUrls` and `blockDomains`

## 3.34.10 - 2020-01-04

- adds disableImages method to prevent images from loading (#362)

## 3.33.1 - 2019-11-24

- allow symfony 5 components

## 3.33.0 - 2019-10-17

- allow to connect to remote chromium instance (#341)

## 3.32.1 - 2019-08-02

- fix screenshots not deleting temporary files on the filesystem

## 3.32.0 - 2019-07-19

- add support for HTTP authentication

## 3.31.1 - 2019-07-19

- fix screenshot image manipulations

## 3.31.0 - 2019-06-20

- allow to specify the cookie domain

## 3.30.0 - 2019-06-07

- allow JavaScript to be disabled

## 3.29.0 - 2019-04-24

- add `addChromiumArguments`

## 3.28.0 - 2019-03-29

- add `selectOption`

## 3.27.0 - 2019-03-11

- `paperSize` and `margins` can now use custom units

## 3.26.3 - 2019-02-06

- add `writeOptionsToFile`

## 3.26.2 - 2019-02-01

- fix for setting cookies

## 3.26.1 - 2019-01-10

- update lower deps

## 3.26.0 - 2018-10-18

- new methods `addStyleTag` and `device` added
- fixed a bug where chrome would not shut down properly

## 3.25.1 - 2018-10-08

- improve compatibilty with W-w-windows

## 3.25.0 - 2018-09-02

- add `type`

## 3.24.0 - 2018-08-05

- add `useCookies`

## 3.23.1 - 2018-07-12

- improve compatibility with Windows

## 3.23.0 - 2018-07-12

- added `waitForFunction`

## 3.22.1 - 2018-04-20

- better handling of timeouts

## 3.22.0 - 2018-04-18

- add `evaluate`

## 3.21.0 - 2018-04-13

- add `setScreenshotType`

## 3.20.1 - 2018-04-13

- fix typehint in `emulateMedia`
- drop PHP 7.0 support

## 3.20.0 - 2018-04-13

- add `click`

## 3.19.0 - 2018-04-03

- add `setExtraHttpHeaders`

### 3.18.0 - 2018-03-28

- add support for taking screenshot of an element using a selector

### 3.17.0 - 2018-02-22

- add support for custom binary/browser script

### 3.16.1 - 2018-02-08

- support symfony ^4.0
- support phpunit ^7.0

### 3.16.0 - 2018-01-28

- add `waitUntilNetworkIdle`

### 3.15.0 - 2018-01-20

- add ability to set sustom header and footer

### 3.14.1 - 2017-12-24

- update dep on `spatie/image`

### 3.14.0 - 2017-12-10

- add `setChromePath`

### 3.13.0 - 2017-12-07

- add ability to set node module path
- add ability to output directory to the browser

### 3.12.0 - 2017-11-20

- add `setDelay`

### 3.11.1 - 2017-11-18

- improve error handling for when no extension is provided

### 3.11.0 - 2017-11-16

- add `setOption`
- refactor internals

### 3.10.0 - 2017-11-13

- add `setProxyServer`

### 3.9.0 - 2017-11-13

- add `dismissDialogs`

### 3.8.1 - 2017-11-10

- move snapshot package to dev-deps

### 3.8.0 - 2017-11-07

- allow the use of the 'omitBackground' option when capturing screenshots

### 3.7.0 - 2017-10-31

- add docblocks for static constructors to support IDE autocompletion

### 3.6.0 - 2017-10-31

- make `paperSize` use floats instead of integers, addressing US paper sizes

### 3.5.0 - 2017-10-28

- add `mobile` and `touch` functions

### 3.4.0 - 2017-10-27

- add `ignoreHttpsErrors`

### 3.3.1 - 2017-10-26

- fix default npm path

### 3.3.0 - 2017-10-25

- add `noSandbox`

### 3.2.1 - 2017-10-25

- fix setting margins

### 3.2.0 - 2017-10-18

- add `setNetworkIdleTimeout`

### 3.1.0 - 2017-10-18

- make node and npm paths configurable
- improved out of the box experience for Laravel Valet users

### 3.0.0 - 2017-10-16

- use Puppeteer to call Chrome
- add various options enabled by using Puppeteer

### 2.4.1 - 2017-09-27

- add the default path for linux Chromium users

### 2.4.0 - 2017-09-21

- add `bodyHtml` method

### 2.3.0 - 2017-09-19

- add high pixel density support

### 2.2.0 - 2017-08-31

- add support for directly converting some html

### 2.1.0 - 2017-08-06

- add support for saving `pdf`s

### 2.0.3 - 2017-07-05

- lower `symfony/process` requirement

### 2.0.2 - 2017-07-05

- security improvements
- clean up unneeded files

### 2.0.1 - 2017-07-04

- add support for urls with special characters

### 2.0.0 - 2017-07-03

- complete rewrite
- ditch PhantomJS is favour of headless Chrome

### 1.9.1 - 2017-06-02

- fix error message

### 1.7.0 - 2017-05-13

- added support MacOS

### 1.8.0 - 2017-04-27

- added support for setting a custom user agent

### 1.8.0 - 2017-04-27

- added support for setting a custom user agent

### 1.7.0 - 2017-03-14

- added support for W w w windows

### 1.6.0 - 2017-01-02

- added support for some more extensions

### 1.5.4 - 2016-12-17

- make `width` protected

### 1.5.3 - 2016-11-12

- Fix width issues

### 1.5.2 - 2016-08-18

- Upgrade `phantomjs` binary

### 1.5.1 - 2016-04-25

- Fixed a bug where phantomjs keeps on rendering until the end of time

### 1.5.0

- Added a method to set the background color

### 1.4.0

- Added timeout parameter

### 1.3.0

- Added quality parameter
