class ZebraController < ApplicationController
  def dog
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
  
    render template: "game_template/flexible"
  end
  
  def giraffe
    first_die = rand(1..4)
    second_die = rand(1..4)
    third_die = rand(1..4)
    fourth_die = rand(1..4)
    sum = first_die + second_die + third_die + fourth_die
    
    @outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}."
    render template: "game_template/five_four"
  end
  
  def elephant
    die = rand(1..20)
    @outcome = "You rolled a #{die}."
    render template: "game_template/one_twenty"
  end

  def lion
    first_die = rand(1..6)
    second_die = rand(1..6)
    sum = first_die + second_die
    
    @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
    render template: "game_template/two_six"
  end

  def cat
    first_die = rand(1..10)
    second_die = rand(1..10)
    sum = first_die + second_die
	
    @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
    render template: "game_template/two_ten"
  end

  def rules
    render template: "rules"
  end
end
