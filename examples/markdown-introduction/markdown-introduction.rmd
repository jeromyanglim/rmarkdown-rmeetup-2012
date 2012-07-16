## Basic markdown functionality

# Heading 1
## Heading 2
### Heading 3
#### Heading 4






### Basic formatting
Bold text: **Bold text**
Italics text: *italics text*

### Paragraphs
Insert blank line:

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


### Dot Points
Simple dot points:

* Point 1
* Point 2
* Point 3

and numeric dot points:

1. Number 1
2. Number 2
3. Number 3

and nested dot points:

* A
    * A.1
    * A.2
* B
    * B.1
    * B.2



### Equations
Uses Mathjax to support LaTeX equations.

Inline equations: e.g., $y_i = \alpha + \beta x_i + e_i$.

Displayed equations:

$$
\frac{1}{1+\exp(-x)}
$$



### Hyperlinks

* [my RSS feed](http://feeds.feedburner.com/jeromyanglim).
* <http://www.r-project.org/>



### Images

![image description here](figure/buildings.jpg)







### Code
Inline code between backticks: e.g., `print('hello world!')`.

Displayed code can be tab indented or four space indented:

    ```{r}
    x <- 1:10
    x
    ```




### Quote
Quotes by adding greater than to start of each line.

> To be, or not to be, that is the question:
> Whether 'tis nobler in the mind to suffer
> The slings and arrows of outrageous fortune,


### Tables
Extended github table functionality:

A   | B      |   C
--- | ---    | ---
1   | Male   | Blue
2   | Female | Pink

Or just write HTML:

<table border="1">
    <tr><td>Cell A1</td>
        <td>Cell B1</td></tr>
    <tr><td>Cell A2</td>
        <td>Cell B2</td></tr>
</table>



### HTML is passed through
Hyperlink
<a href="http://jeromyanglim.blogspot.com">My website</a>



E.g., new line
<hr />

HTML Symbol Entities

&alpha; &beta; &trade;






