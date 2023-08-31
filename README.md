[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
![GitHub package.json version](https://img.shields.io/github/package-json/v/verona-interfaces/player)

In order to understand Verona Interfaces, please go 
to [Verona Interfaces Introduction](https://github.com/verona-interfaces/introduction)! 

Texts about Player API:
* Model: [Use cases and communication](model/model.md)
* [About pages of a unit](model/pages.md)
* Player API: [markdown](docs/asyncapi.md), [shiny html](https://verona-interfaces.github.io/player)
* see also: [metadata](https://github.com/verona-interfaces/metadata)

## release notes
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

### UML
For discussions, we visualise models (sequences, interfaces, classes) via UML. These diagrams are stored in this repository as *.puml files as we use [PlantUML](https://plantuml.com/) as a tool.

By editing, you might like to see the diagrams rendered on every change. This is supported by many tools depending on your development environment. For example, IntelliJ idea offers a plugin mechanism, and the plugins "PlantUML integration" by Eugene Steinberg and "PlantUML Syntax Check" by Stefan Zeller are very useful. For Visual Studio Code there are also good extensions in the marketplace.

In order to use the UML diagrams directly in markdown documents, one must render every UML diagram as image file and keep it in the repository too. We found png format very useful, because PlantUML is able to store the uml syntax in the png file as metadata. If only the png file is available, one can extract the syntax out of the png file.

Please render the puml files to png files before every git push. This helps on GitHub to evaluate the changes. When you run `npm install` after cloning this repo, you can use the script `uml` in the `package.json` to run the conversion. 

### API
The api is written as [async api](https://www.asyncapi.com) yaml file. After editing, we create markdown and html files for better reading.

To ease that post-processing, we use [node.js](https://nodejs.org). The repo contains a package.json. By running `npm install` you get the tool `@asyncapi/generator` and two templates. Run `npm run ag` to recreate html and markdown representations of the api.
