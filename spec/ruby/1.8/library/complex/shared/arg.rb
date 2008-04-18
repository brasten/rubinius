require 'complex'

shared :complex_arg do |cmd|
  describe "Complex##{cmd}" do
    it "needs to be reviewed for spec completeness" do
    end
  
    it "returns the argument -- i.e., the angle from (1, 0) in the complex plane" do
      TwoPi = 2 * Math::PI
      (Complex(1, 0).send(cmd) % TwoPi).should be_close(0, TOLERANCE)
      (Complex(0, 2).send(cmd) % TwoPi).should be_close(Math::PI * 0.5, TOLERANCE)
      (Complex(-100, 0).send(cmd) % TwoPi).should be_close(Math::PI, TOLERANCE)
      (Complex(0, -75.3).send(cmd) % TwoPi).should be_close(Math::PI * 1.5, TOLERANCE)
    end
  end
end