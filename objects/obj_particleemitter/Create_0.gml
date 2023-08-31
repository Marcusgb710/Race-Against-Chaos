xStart = camera_get_view_x(view_camera[0]);
yStart = camera_get_view_y(view_camera[0]);


emitterRain = part_emitter_create(obj_ParticleSetup.particle_system);

part_emitter_region(obj_ParticleSetup.particle_system, emitterRain, xStart - 800, room_width + 800, yStart-50, yStart-50, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_ParticleSetup.particle_system, emitterRain, obj_ParticleSetup.particletype_rain, 2.5);