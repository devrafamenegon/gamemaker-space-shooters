/// @description

image_yscale = image_xscale;

//increasing 
if (increasing)
{
	image_xscale += initial_scale;
}
if (decreasing)
{
	image_xscale -= initial_scale;
}


//putting limits
if(image_xscale >= 2)
{
	increasing = false;
	decreasing = true;
	initial_scale = random_range(.01, .1);
}

if(image_xscale <= 1)
{
	decreasing = false;
	increasing = true;
	initial_scale = random_range(.01, .1);
}


