Since version 6.1, every new release is published with a tag. This tag carries release notes, so there is no need to add release notes to the README.md anymore. The list below is the copy of old release notes.

# 6.0

* change data type of `validPages` in `playerState`
* add `vopPlayerConfigChangedNotification`
* add `vopRuntimeErrorNotification`

# 5.2

* add `buttons` mode to player config in start command

# 5.1

* add print mode to start command

# 5.0

* the player should send always full payload; in case of performance issues, the player should use strategies like buffer/delay/debounce; furthermore, the host can decide to ignore state messages; therefor, `vopGetStateRequest` and `stateReportPolicy` property of `playerConfig` in `vopStartCommand` are removed
* the host should manage any stop request by hiding or unloading the player; to continue, the player can be reloaded with previous responses; therefor, `vopStopCommand`, `vopContinueCommand` and the `state` property of `playerState` in `vopStateChangedNotification` are removed

# 4.0

* added `directDownloadUrl` in `playerConfig` to enable download of additional code or data by the player
* specify metadata as json-ld as described [here](https://github.com/verona-interfaces/metadata/#readme); changed `vopReadyNotification` to send this `metadata` instead of `apiVersion`, `notSupportedApiFeatures`, `supportedUnitDefinitionTypes` and `supportedUnitStateDataTypes`

# 3.0

* removed `vopGetStateResponse`; the player should answer the `vopGetStateRequest`by sending `vopStateChangedNotification` with all data parts
* removed `complete-and-valid` as `responseProgress` value; it is assumed that no response will be reported unless it is valid, so `complete` will do
* made `validPages` and `currentPage` optional in `playerState` for players w/o paging feature
* added `enabledNavigationTargets` in `playerConfig` in `vopStartCommand` to let the player know whether navigation targets are enabled or not; values are the same as in `vopUnitNavigationRequestedNotification`
* added `startPage` in `playerConfig` in `vopStartCommand` to let the player jump to the previously selected page; this might also be helpful in evaluation use cases where (after the test) the given answers of items at a specific page are expected to be presented
* added `navigationDeniedNotification` to let the player know when the navigation failed due to `presentationProgress` or `responseProgress`
* version notation of supported unit definition types and unit state data types changed to semver with a tilde and/or a caret, separated by `@`.
* changed in `vopUnitNavigationRequestedNotification` property name `targetRelative` to `target`