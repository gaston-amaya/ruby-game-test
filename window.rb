require 'ruby2d'

set title: "Story of ruby"

background.new(
  
) 

hero = Sprite.new(
'hero.png',
width: 100,
  height: 90,
  clip_width: 78,
  y: 390,
  
  time: 250,
  animations: {
    walk: 1..2,
    cheer: 6..7,
   }
   
)
on :key_held do |event|
    case event.key
      when 'a'
        hero.play animation: :walk, flip: :horizontal
      when 'd'
        hero.play animation: :walk
    end
  end

  on :key_down do |event|
    case event.key
      when 'c'
        hero.play animation: :cheer
    end
  end





show