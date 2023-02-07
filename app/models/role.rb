class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |aud|
            aud.actor
        end
    end

    def locations
        self.auditions.map do |aud|
            aud.location
        end 
    end

    def lead
        @res = []
        self.auditions.map do |aud|
            if aud.hired == true
                @res << aud.actor
            end
        end
        if @res.length > 0
            @res[0]
        else 
            "no actor has been hired for this role."
        end
    end

    def understudy
        @res = []
        self.auditions.map do |aud|
            if aud.hired == true
                @res << aud.actor
            end
        end
        if @res.length > 1
            @res[1]
        else 
            "no understudy has been hired for this role."
        end
    end

end