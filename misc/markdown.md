# Markdown

> partly borrowed from [markdown-cheatsheet](https://github.com/tchapi/markdown-cheatsheet) and [github-article](https://help.github.com/articles/basic-writing-and-formatting-syntax/)

----

## Headings

# Heading 1

    Markup :  # Heading 1
    Markup :  ============= (below H1 text)

## Heading 2

    Markup :  ## Heading 2
    Markup: --------------- (below H2 text)

### Heading 3

    Markup :  ### Heading 3

#### Heading 4

    Markup :  #### Heading 4

##### heading 5

    Markup : ##### Heading 5

###### heading 6

    Markup : ###### Heading 6

## Text

Common text  

    Markup :  None

~~Strikethrough text~~  

    Markup :  ~~Strikethrough text~~

_Italic text_  

    Markup :  _Emphasized text_ or *Emphasized text*

__Bold text__  

    Markup :  __Strong text__ or **Strong text**

___Bold Italic text___

    Markup :  ___Strong emphasized text___
    Markup :  ***Strong emphasized text***

__Line breaks__  
line1  
line2  

    Markup : two spaces at end of the line '  '

Paragraph 1

Paragraph 2

    Create a new paragraph by leaving a blank line between lines of text.

> Quotation

    Markup: > text

> > Nested Quotation

    Markup : > >

>* Quoted list 1
>* Quoted list 2

    Markup: >*

```
Quoting Code/Text
```

    Markup: ```
            ```
    Markup: > text

__Foldable text__

<details>
  <summary>Title 1</summary>
  <p>Content 1 Content</p>
</details>

    Markup : <details>
               <summary>Title 1</summary>
                <p>Content 1 Content 1 Content 1 Content 1 Content 1</p>
              </details>

Hotkey
    <kbd>⌘F</kbd>
    <kbd>⇧⌘F</kbd>
    <kbd>⌃F</kbd>

    Markup : <kbd>⌘F</kbd>

## EMOJI

:+1: :-1: :clap:

    Markup : Code appears between colons :EMOJICODE:. :+1: :-1: :clap:

Full list of available emoji - [Emoji Cheatsheet](https://www.webfx.com/tools/emoji-cheat-sheet/).

## Links

[Named Link](http://www.google.com/)

    [Named Link](http://www.google.com/)

[Referenced link][1]  

    Markup:
    [Referenced link][1]  
    [1]: http://www.google.com

[1]: http://www.google.com

http://www.google.com/  

    Markup : http://www.google.com/
<http://example.com/>  

    Markup :or <http://example.com/>

Github links-
    #36 - Issue or pull request URL
    jlord/sheetsee.js#26 - Username/Repository# and issue or pull request number
    @user @team - mention username or team name.

## Image

__Direct Image__
![picture alt](http://www.brightlightpictures.com/assets/images/portfolio/thethaw_header.jpg "Optional Title")

    Markup : ![picture alt](url)

__Referenced image__
![Alt][2]

[2]: http://www.brightlightpictures.com/assets/images/portfolio/thethaw_header.jpg "Title"

    Markup: ![picture alt][1]
    [1]:<url>

__Image as Link__  

[![Google](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Google-favicon-2015.png/150px-Google-favicon-2015.png)](http://www.google.com)

    Markup: [![image alt](image-url)](link-url)

## Table

|Fruits|Price|Units|
|---|:---|---:|
|Custard Apple|1$|5|
|Grapes|4$|2|

```
Markup:
: decides alignment
    :text - left aligned
    text: - right aligned
    text or :text: - centre aligned (default)


|Fruits|Price|Units|
|--|:--|--:|
|Apple|1$|5|
|Grapes|4$|2|
```

## Source Code

`code()`

    Markup :  `code()`

inline code block `code` in text

~~~
public static void main(String args[]) {
    System.out.println("Hello World");
}
~~~

__CSS Script__

```css
.name{

}

#idwith{

}
```
    Markup: ```css
             ```

__HTML Code__
```html
<html>
</html>
```
    Markup: ```html
             ```

__Javascript code__
```javascript
    var specificLanguage_code =
    {
        "data": {
            "lookedUpPlatform": 1,
            "query": "Kasabian+Test+Transmission",
            "lookedUpItem": {
                "name": "Test Transmission",
                "artist": "Kasabian",
                "album": "Kasabian",
                "picture": null,
                "link": "http://open.spotify.com/track/5jhJur5n4fasblLSCOcrTp"
            }
        }
    }
```

    Markup : ```javascript
             ```

__Java Code__

```java
public static void main(String args[]) {
    System.out.println("Hello World");
}
```

    Markup: ```java
            ```

__Shell Code__
```shell
pwd
echo "Hello World"
```

    Markup: ```shell
            ```

## List

### Unordered List

* Bullet list item
* Nested List Item
 - Level 2
   + Level 3


~~~
 Markup : * Bullet list
           + Level 2
            - Level 3
          * Bullet list item 2
~~~

### Ordered List

1. Numbered list
    1. A nested numbered list
    2. Which is numbered
2. Which is numbered

~~~
 Markup : 1. Numbered list
              1. A nested numbered list
              2. Which is numbered
          2. Which is numbered
~~~

## Controls

### Checkbox

- [ ] An uncompleted task
- [x] A completed task

~~~
 Markup : - [ ] An uncompleted task
          - [x] A completed task
~~~

## Horizontal Line

***
    Markup: *** or ___ or * * *

## Ignoring Markdown formatting

Escape character is "\".
To use | and - in table, use \| and \- respectively.

Let's rename \*our-new-project\* to \*our-old-project\*.
