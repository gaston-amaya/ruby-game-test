require 'ruby2d'

hero = Sprite.new(
'Hero.png',
width: 400,
  height: 500,
  clip_width: 100,
  time: 250,
  animations: {
    walk: 21..30,
    jump: 1..2
}
)
on :key_down do |event|
    case event.key
      when 'left'
        hero.play animation: :walk, loop: true, flip: :horizontal
      when 'right'
        hero.play animation: :walk, loop: true
      when 'up'
      end
    end


show