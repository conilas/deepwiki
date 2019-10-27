# deepwiki
Check the graph depth from one page to another (amount of hops for A -> B)

## idea

Ever wondered how you are sometimes having a chat with a friend about fish sticks and all of the sudden the conversation takes a turn and you guys start talking about how dark and empty life is? Even better, you start talking about how the state monad could actually be a representation of the real world? 

Do you not ask yourself "how come we end up in Category Theory? How is CT related to fish sticks?"? Well, you should. And if you start now, you have this useless piece of crappy code to help you understand how these subjects are related! 

This app has the intent of generating a graph-like structure of how can one end in a page when departing from another. It basically wants to help you find out the relation of Constructive Logic, Curry-Howard-Lambek isomorphism, dependently typed programming and, most important, the initial fish sticks.

## how

Well, thank you for asking! 

The idea is to implement a simple scrapper from every page in wiki, generate all the possible links that particular page offer and follow in that trail until you find your goal. Instead of stopping at the first result, what we want is for the invoker to be able to find _all the paths_ from one object to another (of course, not to follow in an infine path of knowledge, we add a max number of hops for it to not explode your mind with relations).

So we go from page to page scrapping new urls and saving them all in a graph-like structure.

The tools used were Haskell with Scalpel (so far). The next steps are yet to be defined. I would like to find a relation 
between graph-like structure, monads for the Graph category and maybe something more in the way. Therefore, this is a project to have fun and study fun stuff - which will also (if finished) bring an usefull result :)

## who

me, for now. pls halp.
