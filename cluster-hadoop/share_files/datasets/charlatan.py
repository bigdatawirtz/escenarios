#!/usr/bin/env python3

# charlatan.py
# charlatan crear un ficheiro de texto con palabras pseudoaleatorias que se toman 
# dunha lista que pode definir o programador
#
# Pode definirse o número de palabras para crear un ficheiro máis grande

import random

ficheiro = open("charla.txt","a") 
PsudoRandomWords = ["Saraiba ", "Pachuzo ", "Chorima ", "Moraima ", "Luscofusco ", "Licorka ", "Fume "]

index = 0
#Increase the range to make a bigger file
#15000000 -> 112MB
#30000000 -> 223MB

numero_palabras = 30000000

for x in range(numero_palabras):
   #Cambia o end range se modificas o número de randomWords
   index = random.randint(0,6)
   ficheiro.write(PsudoRandomWords[index])
   if x % 20 == 0:
      ficheiro.write('\n')
