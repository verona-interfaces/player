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
          data-not-supported="key1 key2 ..."
    />
```
* `content`: application name
* `data-version`: version of the player
* `data-repository-url`: if published, the url of the code repository should be given to get further information
* `data-verona-version`: version of the interface supported by the player; since version 2, the player is expected to 
declare it's verona version as part of the `vopReadyNotification` - so the application host will ignore this metadata 
entry   
* `data-not-supported`: keys of not supported features separated by space (see below)

### List of not supported features
When the host receives the `vopReadyNotification`, some of the missing features are known 
from the minor version of API. If the minor API version of the host is 3 and the player
declares 2, then the host should know what the player does not support. By reading the 
html metadata `data-not-supported`, the host learns what the player does not support in 
addition.

At the time of introduction of player metadata, the list of possibly missing features starts with
verona player interface version 2.1:
* `stop-continue`: the player will not handle the host's `vopStopCommand` and `vopContinueCommand`
* `focus-notify`: the player will not send `vopWindowsFocusChangedNotification` in case
* `state-report-policy`: the player will not comply with `playerConfig.stateReportPolicy` of `vopStartCommand` and 
will not handle the host's `vopGetStateRequest`
* `log-policy`: the player will ignore `playerConfig.logPolicy` of `vopStartCommand`
* `paging-mode`: the player will ignore `playerConfig.pagingMode` of `vopStartCommand`
