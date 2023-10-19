class Author < ApplicationRecord

    has_many :books

    def createBook
        @author.name
    end

end
