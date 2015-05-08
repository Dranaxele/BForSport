class PagesController < ApplicationController
  def inex
      @title = "| Test"
  end
    
    

  def accueil
      @title = "| Accueil"
  end

  def sports
      @title = "| Sport"
  end

  def infos
      @title = "| Infos"
  end

  def classement
      @title = "| Classement"
  end

end
