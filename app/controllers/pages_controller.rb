class PagesController < ApplicationController
    def search

    end

    def list
      @properties = Property.all
    end

end
