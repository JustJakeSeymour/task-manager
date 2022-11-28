require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'return true when the title is laundry' do
        task = Task.create!(title: "laundry", description: "clean clothes, please it's everywhere")
        
        expect(task.laundry?).to be true
      end
      
      it 'should return true when the description is laundry' do
        task = Task.create!(title: "wash", description: "laundry")

        expect(task.laundry?).to be true
      end
      
      it 'should return false when the title and description do not include laundry' do
        task = Task.create!(title: "dinner", description: "yum")
        
        expect(task.laundry?).to be false
      end
    end
  end
end