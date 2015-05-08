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

  def account
  	@title = "| Account"
  end

  def bet
  	@title = "| Paris"
  end

  def friends
  	@title = "| Friends"
  end

end
