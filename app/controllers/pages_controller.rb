class PagesController < ApplicationController
    def inex
        
    end
    
    
  def sports
      @title = "| Sport"
      $lstParis = ["Bordeaux - Montpellier", "EUH"]
      $lstLigue = ["Ligue 1", "Ligue 2"]
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
def inscription
    @user = User.new
    @title = "Sign up"
  end

end
