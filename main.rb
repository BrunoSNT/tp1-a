load 'musica.rb'




artista1 = Artista.new "Bruno", "Brasileiro" 
artista2 = Artista.new "Joao", "Portugues" 
artista3 = Artista.new "Bob", "Brasileiro"
artista4 = Artista.new "Rafael", "Argentino"

album1 = Album.new "Álbum 1", 2019, artista1, [artista2,artista3]
album2 = Album.new "Álbum 2", 2020, [artista1], [artista2]
album3 = Album.new "Álbum 3", 2021, artista1, artista2

musica1 = Musica.new "Música 1", 2.5, artista1, album1
musica2 = Musica.new "Música 2", 3, [artista1], album1
musica3 = Musica.new "Música 3", 3.5, [artista1,artista2], album1
musica4 = Musica.new "Música 4", 2.7, artista1, album2
musica5 = Musica.new "Música 5", 3.2, [artista1], album3
musica6 = Musica.new "Música 6", 5, [artista2,artista3,artista4], album3
puts '
+++++++++++++++++++++++++++++++++
    Artistas e seus métodos: 
+++++++++++++++++++++++++++++++++'
print'Nome do artista: '
puts artista1.nome
print'Nacionalidade: '
puts artista1.nacionalidade
print'Álbuns: '
puts artista1.albuns.map {|album| album.nome}
print'Músicas: '
puts artista1.musicas.map {|musica| musica.nome}
puts '
+++++++++++++++++++++++++++++++++
    Álbum e seus métodos: 
+++++++++++++++++++++++++++++++++'           
print'Nome do album: '
puts album3.nome
print'Ano de lançamento: '
puts album3.ano
print'Album do artista: '
puts album3.artista.nome
print'Músicas: '
puts album3.musicas.map {|musicas| musicas.nome}
print'Duraçao do album: '
puts album3.duracao.sum
print'Participões: '
puts album3.participacao.nome                   #Para um único participante - objeto
puts '
+++++++++++++++++++++++++++++++++
    Álbum e mais métodos: 
+++++++++++++++++++++++++++++++++'           
print'Nome do álbum: '
puts album1.nome
print'Ano de lançamento: '
puts album1.ano
print'Álbum do artista: '
puts album1.artista.nome
print'Músicas: '
puts album1.musicas.map {|musicas| musicas.nome}    #Para varios participantes - array[objetos] 
print'Duraçao do álbum: '
puts album1.duracao.sum
print'Participões: '
puts album1.participacao.map {|musica| musica.nome}
puts '
+++++++++++++++++++++++++++++++++
    Músicas e seus métodos: 
+++++++++++++++++++++++++++++++++' 
print'Nome da Música: '
puts musica1.nome
print'Artista(s) criador(es): '
puts musica1.artista.nome
print'Pertence ao álbum: '
puts musica1.album.nome                         #Para um único compositor - objeto
print'Duração: '
puts musica1.duracao
puts '
+++++++++++++++++++++++++++++++++
    Músicas e mais métodos: 
+++++++++++++++++++++++++++++++++' 
print'Nome da Música: '
puts musica6.nome
print'Artista(s) criador(es): '
puts musica6.artista.map {|artista| artista.nome} # Para varios compositores - array[objetos]
print'Pertence ao álbum: '
puts musica6.album.nome
print'Duração: '
puts musica6.duracao
puts '
+++++++++++++++++++++++++++++++++
        Listagem Geral: 
+++++++++++++++++++++++++++++++++' 
puts '
           Artistas:
'
puts Artista.todos
print 'total: '
puts Artista.total
puts '
            Álbuns:
'
puts Album.todos
print 'total: '
puts Album.total 
puts '
            Músicas:
'
puts Musica.todos
print 'total: '  
puts Musica.total
