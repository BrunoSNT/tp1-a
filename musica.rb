load "album.rb"

class Musica < Album #Herda métodos de Album e consequentemente de Artista
    def initialize nome,duracao,artista,album
        @nome = nome
        @duracao = duracao
        @artista = artista
        @album = album
        if artista.kind_of?(Array)
            artista.map {|artista| artista.musicas << self}
        else
            artista.musicas << self
        end
        album.musicas << self
        album.duracao << self.duracao
    end

    def self.total
        ObjectSpace.each_object(Musica) { |x| }
    end

    def self.todos
        ObjectSpace.each_object(Musica).map { |x| x.nome }
    end

    def album
        @album
    end

end