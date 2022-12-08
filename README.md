# "Green" Interactive Generative Shapes
### Generative Art Term Project 311.24 
<p>   For this project, I was initially struggling with ideas how I would represent each of the themes with a generative work. The prompt "Green" had really drawn me in, as it was very vague, so it gave me a lot of room to work with. I started off by looking through famous artists who focused on the abstraction of shapes. I looked into the work of specficially Lyubov Popova and Kazimir Malevich. I think both of these artists are very successful at utilizing colour and shape to create a unified and interesting piece. With the prompt green, I wanted to create something similar while using a randomly generated process. My tool of choice was Processing 4.0, using it's java feature. I am familiar with java so using Processing was not the learning curve for myself that it may have been for some. </p>
<p>   Working with the ideas similar to Popova and Kazimir, I first played around with generating random shapes. I initialized a global variable for the amount of shapes I would want to create, and I also initialized an array of shapes from a Shape class I had implemented and used a for-loop to place the amount of shapes I desired into the array. I have a variable called `shape_number` that chooses if the shape will be a circle, rectangle, or line randomly. The opacity is also chosen randomly, as well as the width, height, and spawn location of each shape. I also have a `rotate_value` variable that gives a random angle for the shape to be rotated by. I used a lot of Processing's bulit in funcctions for this project, such as `rotate()`, `translate()`, and `createGraphics()`. I heavily referenced Processing's user reference guide: https://processing.org/reference , which was very helpful for learning about Processing bulit in functionalities for artists. Finally, I had created a fairly large list of different green hex values, and added them to a list of colors which one of was chosen randomly for each shape. At this point I was pretty happy with how things were coming along, but I thought the way everything was generated was rather boring for a user. This brought me to the idea of letting the user generate their own art with an amount of clicks.</p>
<p>   Using Processing 4's MousePressed and KeyPressed functions, I programmed this generative piece to respond to user inputs. The user can click to create more shapes until they are pleased (20 at a time, as I did not make the amount spawning adjustable), they can place a border overtop by pressing 'b' for border, or clear all shapes by pressing 'c' for clear. The clear functionality I found to be rather useful, as then if the user did not like the piece that had been generated, they could just clear it instead of having to rerun the program completely. The border functionality I implemented last, because as I was generating pieces the white border kept getting lost, and I thought I would be able to create an interesting layering effect if the user could place the border, then generated more shapes, then place a border again if they wished. </p>
<p> Overall, I ended up being very pleased with the pieces I generated. I thought I sucessfully put a generative twist on the works of Popova and Malevich, while following with the theme of "Green". The works generated make me feel at peace, and relaxed. Green is the color of nature, and the heart chakra, so it is a very peaceful colour, in line with the feeling I wanted my generative pieces to generate. I am also very happy with the user interactivity. I think the ability for the user to play around with the piece is one of the reasons generative art is so appealing. The prompt "Green" along with inpsiration of Popova and Malevich have led me to a product I am happy with, and excited for any user to try out and play with. Enjoy!

## How to Run:
Install Processing 4.0 or later: https://processing.org/download <br /> 
Open the file "green.pde" using Processing. <br /> 
Press the play button at the top left to run the code. <br /> 

### User Inputs
To create more shapes: Right Click <br />
To clear all shapes: Press "b" or "B" <br />
To place a white border over: Press "b" or "B"

## Examples of Finished Generative Pieces
<p float="left">
<img src = "ExampleScreenshots/green ex1.PNG" alt="Example 1" width = "300" />  
<img src = "ExampleScreenshots/green ex10.PNG" alt="Example 10" width = "300" />  
</p>
<p float="left">
<img src = "ExampleScreenshots/green ex7.PNG" alt="Example 2" width = "300" />
<img src = "ExampleScreenshots/green ex9.PNG" alt="Example 9" width = "300" />   
</p>
<p float="left">
<img src = "ExampleScreenshots/green ex2.PNG" alt="Example 3" width = "300" />  
<img src = "ExampleScreenshots/green ex6.PNG" alt="Example 4" width = "300" />  
</p>
<p float="left">
<img src = "ExampleScreenshots/green ex5.PNG" alt="Example 5" width = "300" />  
<img src = "ExampleScreenshots/green ex4.PNG" alt="Example 6" width = "300" />  
</p>
<p float="left">
<img src = "ExampleScreenshots/green ex8.PNG" alt="Example 7" width = "300" /> 
<img src = "ExampleScreenshots/green ex3.PNG" alt="Example 8" width = "300" />  
</p>
