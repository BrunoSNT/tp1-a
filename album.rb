load "artista.rb"

class Album < Artista #Herda métodos de Artista
    def initialize nome,ano,artista,participacao
        @nome = nome
        @ano = ano
        @artista = artista
        @participacao = participacao
        @musicas = []
        @duracao = []
        if artista.kind_of?(Array)
            artista.map {|artista| artista.albuns << self}
        else
            artista.albuns << self
        end
    end

    def self.total
        ObjectSpace.each_object(Album) { |x| }
    end

    def self.todos
        ObjectSpace.each_object(Album).map { |x| x.nome }
    end

    def ano
        @ano
    end

    def artista
        @artista
    end

    def participacao
        @participacao
    end

    def duracao
        @duracao
    end

    def ano= ano
        self.ano = ano
    end

    def duracao= duracao
        self.duracao = duracao
    end
end