"""
                                Mini-teste de programação

Aconteceu algum problema em nosso servidor e algumas palavras do banco de dados ficaram
com o final duplicado.
Sua tarefa é remover duplicação do fim de cada palavra de um texto, mas somente se todas as
palavras do texto tiverem duplicação.
Envie sua solução em um único arquivo mesmo, nessa etapa vamos avaliar o funcionamento
correto do seu algoritmo :)

-- Entrada

A entrada é composta por um único caso teste contendo um texto de uma única linha com pelo
menos uma palavra, sendo todas minúsculas, sem caracteres especiais e sem acentuação.
Todas as palavras estão separadas por apenas um único caractere de espaço. A entrada deve
ser lida pela entrada padrão.

-- Saída

Deve-se imprimir o novo texto sem duplicação (considere a maior duplicação da palavra) do fim
de cada palavra com um ponto final.

-- Exemplos:

----------------------------------------------------------------
( 1 )

Entrada
  oo ratoato roeuoeu aa roupaoupa dodo reiei dee romaoma

Saída
  o rato roeu a roupa do rei de roma.
----------------------------------------------------------------

----------------------------------------------------------------
( 2 )

Entrada
  banana

Saída
  bana.
----------------------------------------------------------------

----------------------------------------------------------------
( 3 )

Entrada
  a bananeira tem banana

Saída
  a bananeira tem banana.
----------------------------------------------------------------
"""

# Code
def removeDuplicates(text):
  words = text.split(' ')
  lenWords = len(words)
  newWords = []

  for i in range(lenWords):
    lenWord = len(words[i])

    if (lenWord == 1):
      return text + "."
    for j in range(1, lenWord):  
      if (lenWord - (j*2) < 0):
        break
      if (words[i][lenWord - (j*2):lenWord - j] == words[i][lenWord - j:lenWord]):
        newWords.append(words[i][:lenWord - j])
  else:
    if (len(newWords) == lenWords):
      return " ".join(newWords) + "."
    return text + "."

    
# Test
assert removeDuplicates("oo ratoato roeuoeu aa roupaoupa dodo reiei dee romaoma") == "o rato roeu a roupa do rei de roma."
assert removeDuplicates("banana") == "bana."
assert removeDuplicates("a bananeira tem banana") == "a bananeira tem banana."
assert removeDuplicates("aa bana tem bana") == "aa bana tem bana."
assert removeDuplicates("a bana tem bana") == "a bana tem bana."