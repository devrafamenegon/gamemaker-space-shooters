/// @description destroying 

//hit
with(other) hit = true;

//destroying me
instance_destroy();

//destroying the enemy instance
instance_destroy(other);