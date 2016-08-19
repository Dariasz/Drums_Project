$ ->
   classes = ['.flash_2_1', '.flash_2_2', '.flash_2_3']
   number = 1
   for OneClass in classes
    if $(OneClass).length
     sentence = $(OneClass).text()
     words = sentence.split(" ")
     $(OneClass).html('')
     $.each words , ->
      if /([A-Z+a-z+ą+ś+ź+ć+ń+ł+ó])/.test(this)
       $(OneClass).append('<n id="WordId' +number+'">'+this+" "+'</n>')
       number++
   setInterval ( ->
    drawn = '#WordId'+Math.floor((Math.random() * number) + 1)
    $(drawn).css("color", "#"+((1<<24)*Math.random()|0).toString(16))
    ), 100  