# Verona Player Interface Definition

This is a repository for the development of the Verona Player Interface (First Edition) definition.
* [Latest Editor's Draft](https://veronaworkgroup.github.io/VeronaPlayerInterface/)

The First Draft was published as ''Item-Player interface definition v1.0'' on September 20th, 2018. The Second Draft was published under the name as ''VERA online player interface definition v1.0'' on March 11th, 2019.
* [First Draft](https://veronaworkgroup.github.io/VeronaPlayerInterface/Drafts/Item-Player%20interface%20definition%20v1.pdf)
* [Second Draft](https://veronaworkgroup.github.io/VeronaPlayerInterface/Drafts/Vo%20interface%20Item-Player%20v1.pdf)

Feature requests are documented in the [issue tracker](https://github.com/VeronaWorkgroup/VeronaPlayerInterface/issues/).

## for contributors

### Markdown
This player interface is rather complex, so there is a lot to explain. It's not only about sending messages between 
pieces of code, it's also about the whole architecture of test applications to be understood. Markdown documents with 
embedded UML diagrams seems to be a suitable format to present our approach.

### ReDoc
<Berengar?>    

### UML
For discussions, we visualise models (sequences, interfaces, classes) via UML. These diagrams are stored in
this repository as *.puml files as we use [PlantUML](https://plantuml.com/) as a tool. The syntax is simple and easy 
to understand.

By editing, you might like to see the diagrams rendered on every change. This is supported by many tools depending on 
your development environment. For example, IntelliJ idea offers a plugin mechanism, and the plugins "PlantUML integration" 
by Eugene Steinberg and "PlantUML Syntax Check" by Stefan Zeller are very useful. For Visual Studio Code there are 
also good extensions in the marketplace.

In order to use the UML diagrams directly in markdown documents, one must render every UML diagram as image file and 
keep it in the repository too. We found png format very useful, because PlantUML is able to store the uml syntax in 
the png file as metadata. If only the png file is available, one can extract the syntax out of the png file.

Please render the puml files to png files before every git push. This helps on GitHub to evaluate the changes. You need 
to install PlantUML on your computer. It's a Java application, so ensure that Java is installed too. Assuming that 
`plantuml.jar` resides in one folder above the project, the following command (on PC) will process all changed puml files
in subfolder `model` as png files into the subfolder `model/png`. 

```
java -jar ..\plantuml.jar -checkmetadata -o png model\*.puml   
```

### API
The API definition is very important, because all programming relies on it. We strongly suggest that an API definition 
is used for e2e testing. This requires an API defintion standard format that can be read by computers. We went for
the [AsyncAPI](https://www.asyncapi.com/) specification, because we deal with asynchronous messages rather 
then HTTP requests.

The API defintion in AsyncAPI format is stored in this repository. To evaluate the changes, we like to 
transform the API files into markdown documents. These markdown representations of the API definition are 
stored in this repository too. The tooling for this will be presented here soon.
