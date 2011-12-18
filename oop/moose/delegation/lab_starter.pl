use MyPaint;

my $canvas = MyPaint::Canvas->new;
my $circle = MyPaint::Circle->new(x => 50, y => 50, r => 10);
my $red    = MyPaint::ColoredCircle->new(x => 10, y => 10, r => 20, color => 'red');

$canvas->add_items($circle, $red);

# this should print all the shapes that are on the canvas
# Bonus: Use SVG module to actually paint the figure
$canvas->paint;
