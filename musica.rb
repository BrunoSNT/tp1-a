load "album.rb"

class Musica
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

    def nome
        @nome
    end

    def artista
        @artista
    end

    def album
        @album
    end

    def duracao
        @duracao
    end
end