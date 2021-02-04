Class Cultivo
    # Los cultivos deben ser comparables #
    include Comparable
    # Getters y Setters de la clase Cultivo #
    attr_accessor :nombre
    # Constructor de la clase Cultvo #
    def initialize (nombre)
        @nombre = nombre
    end

    def to_s
        "#{self.class}: (#{nombre})"
    end

    def <=> (other)
        @nombre <=> other.nombre
    end
end
