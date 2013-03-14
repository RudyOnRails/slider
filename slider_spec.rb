require './slider'

describe "Slider Puzzle" do

  it "should have a slider class" do
    defined?(Slider).should be_true
  end

  it "should have 4 boxes" do
    Slider.new
    boxes.should == 4
  end

end
