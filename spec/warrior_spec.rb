require 'spec_helper'

class Warrior
  attr_accessor :hp, :damage

  def initialize
    @hp, @damage = 100, 10
  end

  def fight(target)
    target.hp - damage
  end
end

describe Warrior do
  subject { Warrior.new }

  let(:target) { Warrior.new }

  it 'crashes' do
    subject.fight(target)
  end
end
