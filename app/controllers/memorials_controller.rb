class MemorialsController < ApplicationController
    def index
      @memorials = Memorial.all
    end
end
