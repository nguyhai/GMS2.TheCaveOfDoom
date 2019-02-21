// Adds friction, slows you down slowly instead if instantly. 
// Uses the approach function. 
//In this case, we are using our current speed and approaching zero

speed_ = approach(speed_, 0, friction_);