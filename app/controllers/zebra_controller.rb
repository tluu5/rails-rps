class ZebraController < ApplicationController
  def rock
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won" 
    end
    render({ :template => "game_templates/play_rock" })
  end

  def paper
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({ :template => "game_templates/play_paper" })
  end

  def scissors
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({ :template => "game_templates/play_scissors" })
  end

  def rules
    render({ :template => "game_templates/rules"})
  end
end
