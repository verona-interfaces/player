# Pages Model
A page is a structural category of the unit. The idea is, that a user has to navigate through 
several pages. The items are not placed on one big page (scroll up/down), but clustered on pages. For some reading
comprehension test, not the whole visible area is subject to pagination, maybe only the right part and the stimulus
text is visible all the time.

## Concept of Pages
Although this approach refers to the paper based assessment, a page can understood more generally as a 
visual stage of the unit. This can be important from the user's point of view, if the number of UI elements is
too big and there is more structure needed to handle all aspects of the unit. 

But there is also an requirement from the analyst's point of view: It might be important to know what elements of the 
unit are visible when the testee responds to specific questions. So the placement of items on pages respect this and 
the stored unit state changes allow it to incorporate the time spent on page (response time) into the analyses.

## Number of pages
The number of pages may differ during runtime. After presenting a video sequence (what is allowed to be presented
only once), this page might be disabled. Or the unit requires a step by step responding behaviour and enforces this
by hiding pages. In some cases (surveys), one given answer might generate more pages of the unit.

## Navigation
The application should always know the number and the names of the pages of the unit. This enables the application to 
provide page navigation elements (some buttons). It's always a better idea to let the application handle navigation 
issues because every unit should be navigated through in a consistent way throughout the booklet. If the unit is used 
in another test application, another way to navigate might be more appropriate. So the unit should not present 
navigation buttons which could be unique for the test. 

It's up to the unit/test designer, but for our interface is important, that
* the player lets the application know about the pages of the unit: number, names, current selected page - right
after unit start and on any changes 
* the application can send a navigation command to select another page
