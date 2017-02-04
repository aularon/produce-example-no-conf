'use strict'

class RandomWordElement
  constructor: (@words) ->

  asHTMLElement: (tagName='DIV')->
    randomWord = @words[Math.floor(Math.random() * this.words.length)]
    elem = document.createElement(tagName)
    elem.appendChild(document.createTextNode(randomWord))

    elem

rwe = new RandomWordElement ['Hello', 'Greetings', 'HI']
document.body.appendChild rwe.asHTMLElement("H#{7/7}")
