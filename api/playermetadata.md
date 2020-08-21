# Metadata for Players

A player might implement the newest version of the verona interface, but for 
some players it's not wise to implement all features. In most cases, the player is 
developed for a specific use case for a certain study or assessment. Some 
features of the interface might be considered as waste of resources when implemented.

For these cases, the host or some player register or player database should know 
about these missing implementations. This is addressed by the player metadata. Every player 
should provide these information. We use the `data-` syntax to place metadata into 
the main html file:

```
    <meta name="application-name" content="iqb verona player dan"
          data-version="2.1.0"
          data-repository-url="https://github.com/iqb-berlin/verona-player-dan"
          data-verona-version="2.1.0"
          data-supports-stop-continue="false"
          [...]
    />
```
### List of metadata
| Key       | Description     | Values     | Default |
| :------------- | :---------- | :----------- | :----------- |
|`content`|application name|string| none |
|`data-version`| version of the player | string (semver)|none |
|`data-repository-url`| if published, the url of the code repositore should be given to get further information|string (url)|none|
|`data-verona-version`|version of the interface supported by the player; since version 2, the player is expected to declare it's verona version as part of the `vopReadyNotification` - so the application host will ignore this metadata entry| string (semver)|none|   
|`data-supports-stop-continue`|the player will/will not handle the host's `vopStopCommand` and `vopContinueCommand`|<code>true &#124; false</code>|`true`
|`data-supports-focus-notify`|the player will/will not send `vopWindowsFocusChangedNotification` in case|<code>true &#124; false</code>|`true`
|`data-supports-state-report-policy`|the player will/will not comply with `playerConfig.stateReportPolicy` of `vopStartCommand` and will/will not handle the host's `vopGetStateRequest`|<code>true &#124; false</code>|`true`
|`data-supports-log-policy`|the player will/will not comply with `playerConfig.logPolicy` of `vopStartCommand`|<code>true &#124; false</code>|`true`
|`data-supports-paging-mode`|the player will/will not comply with `playerConfig.pagingMode` of `vopStartCommand`|<code>true &#124; false</code>|`true`
