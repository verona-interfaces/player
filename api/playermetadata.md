# Metadata for Players

A player is an html file. Some metadata should be placed at the beginning of the file.
This enables users and developers to decide quickly whether this player meets the needs
or not. Some tools like verona player registry or database can categorize the players 
easily.

The application (host) using a player as plug-in should not read these metadata. There are corresponding 
data as payload of the `vopReadyNotification`.

### Implementation
We use the `data-` syntax to place metadata into 
the main html file:

```
    <meta name="application-name" content="iqb verona player dan"
          data-version="2.1.5"
          data-repository-url="https://github.com/iqb-berlin/verona-player-dan"
          data-api-version="2.1.0"
          data-not-supported-api-features="focus-notify paging-mode ..."
          [...]
    />
```
 
### Metadata in detail
* `content`: application name
* `data-version`: version of the player
* `data-repository-url`: if published, the url of the code repository should be given to get further information
* `data-api-version`: version of the interface supported by the player;  This information is also given 
via `vopReadyNotification`.
* `data-not-supported-api-features`: keys of not supported features separated by space (see below);  This information 
is also given via `vopReadyNotification`. BTW the documentation of hosts could use this way of declaration
for missing features as well.
* `data-supported-unit-definition-types`: Space separated list of keys of unit definition formats supported by the 
player. If a version is part of the key then it's enclosed in parentheses. This information is also 
given via `vopReadyNotification`.
* `data-supported-unit-state-data-types`: Space separated list of keys of unit state data formats supported by the player. 
If a version is part of the key then it's enclosed in parentheses.  This information is also 
given via `vopReadyNotification`. 

### List of not supported features
At the time of introduction of player metadata, the list of possibly missing features starts with
verona player interface version 2.1:
* `stop-continue`: the player will not handle the host's `vopStopCommand` and `vopContinueCommand`
* `focus-notify`: the player will not send `vopWindowsFocusChangedNotification` in case
* `state-report-policy`: the player will not comply with `playerConfig.stateReportPolicy` of `vopStartCommand` and 
will not handle the host's `vopGetStateRequest`
* `log-policy`: the player will ignore `playerConfig.logPolicy` of `vopStartCommand`
* `paging-mode`: the player will ignore `playerConfig.pagingMode` of `vopStartCommand`
