particle_system = part_system_create_layer("Surface", false);


particletype_rain = part_type_create();

Min = irandom_range(150, 300);
Max = irandom_range(200, 400);

part_type_sprite(particletype_rain, spr_rainparticle, 0,0,1);

part_type_gravity(particletype_rain, 0.05, 250);

part_type_life(particletype_rain, Min,Max);



