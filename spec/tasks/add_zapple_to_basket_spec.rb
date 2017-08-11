require "rails_helper"

#test database is seeded with development seeds upon load
describe "rake add:add_zapple_to_basket" do
  include_context "rake"

  it "preloads the Rails environment" do
    expect(task.prerequisites).to include "environment"
  end

  it "runs properly with arguments" do
    expect { task["Gala",1].execute }.not_to raise_error
  end

  it "raises an error without arguments" do
    expect { task.execute }.to raise_error
  end

  it "fills a basket with the same variety zapple" do
    task["Gala",1].execute
    expect(basket.zapple.size).to eq(2)
  end

  it "fills a different basket of same variety if original variety basket is filled to capacity" do
    task["Jazz",27].execute
    expect(basket.zapple.size).to eq(1)
  end

  it "fills an empty basket if original basket is filled to capacity" do
    task["Honeycrisp",2].execute
    expect(basket.zapple.size).to eq(2)
  end

  it "it outputs a message stating how many zapples are remaining if zapple cannot be placed" do
    task["Gala",2].execute
    expect { task["Honeycrisp",3].execute }.to output("All baskets are full. We couldn't find the place for #{args[:count]} zapples").to_stdout
  end

  it "updates fill_rate to a percentage of the total capacity when zapples are added" do
    task["Jazz",2].execute
    expect (basket.fill_rate).to eq("11.11%")
  end
end
