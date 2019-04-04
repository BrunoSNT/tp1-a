load "controle.rb"

class Artista 
    def initialize(nome,nacionalidade)
        @nome = nome
        @nacionalidade = nacionalidade
        @albuns = []
        @musicas = []
    end

    def self.total
        ObjectSpace.each_object(Artista) { |x| }
    end

    def self.todos
        ObjectSpace.each_object(Artista).map { |x| x.nome }
    end
    
    def nome
        @nome
    end

    def nacionalidade
        @nacionalidade
    end

    def albuns
        @albuns
    end

    def musicas
        @musicas
    end
end