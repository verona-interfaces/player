[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)

In order to understand Verona Interfaces, please go
to [Verona Interfaces Introduction](https://verona-interfaces.github.io)!

A Verona Player is a Html-file to be loaded into an iframe element of a web application. We call the web application "host". This specification describes the asynchronous communication between a host and the player.

Read the spec here:
* [Html-Document](https://verona-interfaces.github.io/player)
* [AsyncApi source yaml](playerapi.yaml)

The player file must contain of one script tag for metadata as json-ld. The syntax and elements are described [here](https://verona-interfaces.github.io/intro/metadata).

## release notes

### 5.2
* add `buttons` mode to player config in start command

### 5.1
* add print mode to start command

### 5.0
* the player should send always full payload; in case of performance issues, the player should use strategies like buffer/delay/debounce; furthermore, the host can decide to ignore state messages; therefor, `vopGetStateRequest` and `stateReportPolicy` property of `playerConfig` in `vopStartCommand` are removed
* the host should manage any stop request by hiding or unloading the player; to continue, the player can be reloaded with previous responses; therefor, `vopStopCommand`, `vopContinueCommand` and the `state` property of `playerState` in `vopStateChangedNotification` are removed

### 4.0
* added `directDownloadUrl` in `playerConfig` to enable download of additional code or data by the player
* specify metadata as json-ld as described [here](https://github.com/verona-interfaces/metadata/#readme); changed `vopReadyNotification` to send this `metadata` instead of `apiVersion`, `notSupportedApiFeatures`, `supportedUnitDefinitionTypes` and `supportedUnitStateDataTypes`

### 3.0
* removed `vopGetStateResponse`; the player should answer the `vopGetStateRequest`by sending `vopStateChangedNotification` with all data parts
* removed `complete-and-valid` as `responseProgress` value; it is assumed that no response will be reported unless it is valid, so `complete` will do
* made `validPages` and `currentPage` optional in `playerState` for players w/o paging feature
* added `enabledNavigationTargets` in `playerConfig` in `vopStartCommand` to let the player know whether navigation targets are enabled or not; values are the same as in `vopUnitNavigationRequestedNotification`
* added `startPage` in `playerConfig` in `vopStartCommand` to let the player jump to the previously selected page; this might also be helpful in evaluation use cases where (after the test) the given answers of items at a specific page are expected to be presented
* added `navigationDeniedNotification` to let the player know when the navigation failed due to `presentationProgress` or `responseProgress`
* version notation of supported unit definition types and unit state data types changed to semver with a tilde and/or a caret, separated by `@`.
* changed in `vopUnitNavigationRequestedNotification` property name `targetRelative` to `target`

## For Contributors
This api is written as [async api](https://www.asyncapi.com/de) yaml file. After committing to main branch, a GitHub action is triggered to build the html page. Don't forget to update the version and the release notes in `README.md`. Then, create an release.

If you like to check the html page before committing to main branch, 

* have an npm/node.js-environment installed
* check out the repo
* run `npm install`
* run the `generate` script in package.json.

After that, you can check `docs/index.html` in a browser. This file will be ignored by git.