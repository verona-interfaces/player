# Verona Player Module 2.0.0 documentation



This is one part of the Verona Online Assessment Standards.

## Table of Contents




* [Channels](#channels)










## Channels



<a name="channel-vopReadyNotification"></a>





#### Channel Parameters







###  `subscribe` vopReadyNotification

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>apiVersion </td>
  <td>string</td>
  <td><p>This lets the application know what API version the player supports. If this does not fit the API version the application can offer, the player should not be used. An exception should be thrown.</p>
</td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>responseDataType </td>
  <td>string</td>
  <td><p>This string is important when the responses and the logs are processed. Every data transformation should know where the data came from. The type can be an ID of the player or a known data format.</p>
</td>
  <td><em>Any</em></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "apiVersion": "string",
  "responseDataType": "string"
}
```








<a name="channel-vopStartCommand"></a>





#### Channel Parameters







###  `publish` vopStartCommand

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td><p>The session id flags all communication from this moment on. If a message has no or empty session id, it's not processed.</p>
</td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>unitDefinition </td>
  <td>string</td>
  <td><p>The definition of the unit (if given) lets the player adapt. An audio player gets it's audio sequence, a choice player gets it's options...</p>
</td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>restorePoint </td>
  <td>object</td>
  <td><p>If there is any state what should be restored, then this is the information for that.</p>
</td>
  <td><em>Any</em></td>
</tr>









    
      
<tr>
  <td>playerConfig </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>





<tr>
  <td>playerConfig.unitNumber </td>
  <td>integer</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>playerConfig.unitTitle </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>playerConfig.stateReportPolicy </td>
  <td></td>
  <td></td>
  <td><code>none</code>, <code>eager</code>, <code>on-demand</code></td>
</tr>











    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "unitDefinition": "string",
  "restorePoint": {
    "property1": "string",
    "property2": "string"
  },
  "playerConfig": {
    "unitNumber": 1,
    "unitTitle": "string",
    "stateReportPolicy": "none"
  }
}
```








<a name="channel-vopStateChangedNotification"></a>





#### Channel Parameters







###  `subscribe` vopStateChangedNotification

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>timeStamp </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>unitState </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>





<tr>
  <td>unitState.restorePoint </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>











<tr>
  <td>unitState.presentationProgress </td>
  <td></td>
  <td></td>
  <td><code>none</code>, <code>some</code>, <code>complete</code></td>
</tr>









<tr>
  <td>unitState.responseProgress </td>
  <td></td>
  <td></td>
  <td><code>none</code>, <code>some</code>, <code>complete</code>, <code>complete-and-valid</code></td>
</tr>











    
      
<tr>
  <td>playerState </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>





<tr>
  <td>playerState.state </td>
  <td></td>
  <td></td>
  <td><code>running</code>, <code>stopped</code></td>
</tr>









<tr>
  <td>playerState.currentPage </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>playerState.validPages </td>
  <td>array(string)</td>
  <td></td>
  <td><em>Any</em></td>
</tr>













    
      
<tr>
  <td>log </td>
  <td>array(object)</td>
  <td></td>
  <td><em>Any</em></td>
</tr>








<tr>
  <td>log.timeStamp </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>log.key </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>log.content </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>










    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "timeStamp": "2020-02-24T15:07:35Z",
  "unitState": {
    "restorePoint": {
      "property1": "string",
      "property2": "string"
    },
    "presentationProgress": "none",
    "responseProgress": "none"
  },
  "playerState": {
    "state": "running",
    "currentPage": "string",
    "validPages": [
      "string"
    ]
  },
  "log": [
    {
      "timeStamp": "2020-02-24T15:07:35Z",
      "key": "string",
      "content": "string"
    }
  ]
}
```








<a name="channel-vopPageNavigationCommand"></a>





#### Channel Parameters







###  `publish` vopPageNavigationCommand

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>target </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "target": "string"
}
```








<a name="channel-vopUnitNavigationRequestedNotification"></a>





#### Channel Parameters







###  `subscribe` vopUnitNavigationRequestedNotification

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>target </td>
  <td></td>
  <td></td>
  <td><code>next</code>, <code>previous</code>, <code>first</code>, <code>last</code>, <code>end</code></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "target": "next"
}
```








<a name="channel-vopGetLastStateRequest"></a>





#### Channel Parameters







###  `publish` vopGetLastStateRequest

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>stop </td>
  <td>boolean</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "stop": true
}
```








<a name="channel-vopGetLastStateResponse"></a>





#### Channel Parameters







###  `subscribe` vopGetLastStateResponse

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>timeStamp </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
      
<tr>
  <td>unitState </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>





<tr>
  <td>unitState.restorePoint </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>











<tr>
  <td>unitState.presentationProgress </td>
  <td></td>
  <td></td>
  <td><code>none</code>, <code>some</code>, <code>complete</code></td>
</tr>









<tr>
  <td>unitState.responseProgress </td>
  <td></td>
  <td></td>
  <td><code>none</code>, <code>some</code>, <code>complete</code>, <code>complete-and-valid</code></td>
</tr>











    
      
<tr>
  <td>playerState </td>
  <td>object</td>
  <td></td>
  <td><em>Any</em></td>
</tr>





<tr>
  <td>playerState.state </td>
  <td></td>
  <td></td>
  <td><code>running</code>, <code>stopped</code></td>
</tr>









<tr>
  <td>playerState.currentPage </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>playerState.validPages </td>
  <td>array(string)</td>
  <td></td>
  <td><em>Any</em></td>
</tr>













    
      
<tr>
  <td>log </td>
  <td>array(object)</td>
  <td></td>
  <td><em>Any</em></td>
</tr>








<tr>
  <td>log.timeStamp </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>log.key </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>









<tr>
  <td>log.content </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>










    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string",
  "timeStamp": "2020-02-24T15:07:35Z",
  "unitState": {
    "restorePoint": {
      "property1": "string",
      "property2": "string"
    },
    "presentationProgress": "none",
    "responseProgress": "none"
  },
  "playerState": {
    "state": "running",
    "currentPage": "string",
    "validPages": [
      "string"
    ]
  },
  "log": [
    {
      "timeStamp": "2020-02-24T15:07:35Z",
      "key": "string",
      "content": "string"
    }
  ]
}
```








<a name="channel-vopStopCommand"></a>





#### Channel Parameters







###  `publish` vopStopCommand

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string"
}
```








<a name="channel-vopContinueCommand"></a>





#### Channel Parameters







###  `publish` vopContinueCommand

#### Message








##### Payload




<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
      <th>Accepted values</th>
    </tr>
  </thead>
  <tbody>
    
      
<tr>
  <td>sessionId </td>
  <td>string</td>
  <td></td>
  <td><em>Any</em></td>
</tr>







    
  </tbody>
</table>



###### Example of payload _(generated)_

```json
{
  "sessionId": "string"
}
```










