class Puppy

    attr_reader :breed
    attr_accessor :name, :months_old

    def initialize(params)
        @name = params[:name]
        @breed = params[:breed]
        @months_old = params[:months_old]
    end

end