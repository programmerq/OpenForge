include <forge_lib.scad>

module 4x_wall_line(sc, seed, manifold=0) {
  seed_vect = rands(0, 100, 22, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,8.2,7]);
    translate([0,manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([10,0,0]) rand_face(seed_vect[1]);
      translate([20,0,0]) rand_face(seed_vect[2]);
      translate([30,0,0]) rand_face(seed_vect[3]);
      translate([40,0,0]) rand_face(seed_vect[4]);
      translate([50,0,0]) rand_face(seed_vect[5]);
      translate([60,0,0]) rand_face(seed_vect[6]);
      translate([70,0,0]) rand_face(seed_vect[7]);
      translate([80,0,0]) rand_face(seed_vect[8]);
      translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
    }
    translate([100,8.2-manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[10]);
      translate([10,0,0]) rand_face(seed_vect[11]);
      translate([20,0,0]) rand_face(seed_vect[12]);
      translate([30,0,0]) rand_face(seed_vect[13]);
      translate([40,0,0]) rand_face(seed_vect[14]);
      translate([50,0,0]) rand_face(seed_vect[15]);
      translate([60,0,0]) rand_face(seed_vect[16]);
      translate([70,0,0]) rand_face(seed_vect[17]);
      translate([80,0,0]) rand_face(seed_vect[18]);
      translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[19]);
    }
    translate([1+manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[20]);
    translate([99-manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[21]);
  }
}
      
module 4x_static_wall_line(front, back, side, manifold=0) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,8.2,7]);
    translate([0,manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([10,0,0]) static_face(front[1]);
      translate([20,0,0]) static_face(front[2]);
      translate([30,0,0]) static_face(front[3]);
      translate([40,0,0]) static_face(front[4]);
      translate([50,0,0]) static_face(front[5]);
      translate([60,0,0]) static_face(front[6]);
      translate([70,0,0]) static_face(front[7]);
      translate([80,0,0]) static_face(front[8]);
      translate([90,0,0]) scale([.9,1,1]) static_face(front[9]);
    }
    translate([100,8.2-manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10,0,0]) static_face(back[1]);
      translate([20,0,0]) static_face(back[2]);
      translate([30,0,0]) static_face(back[3]);
      translate([40,0,0]) static_face(back[4]);
      translate([50,0,0]) static_face(back[5]);
      translate([60,0,0]) static_face(back[6]);
      translate([70,0,0]) static_face(back[7]);
      translate([80,0,0]) static_face(back[8]);
      translate([90,0,0]) scale([.9,1,1]) static_face(back[9]);
    }
    translate([1+manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([99-manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x_stagger_wall_line(sc, seed, manifold=0) {
  seed_vect = rands(0, 100, 30, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,8.2,7]);
    translate([0,manifold,0]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
      translate([15,0,0]) rand_face(seed_vect[2]);
      translate([25,0,0]) rand_face(seed_vect[3]);
      translate([35,0,0]) rand_face(seed_vect[4]);
      translate([45,0,0]) rand_face(seed_vect[5]);
      translate([55,0,0]) rand_face(seed_vect[6]);
      translate([65,0,0]) rand_face(seed_vect[7]);
      translate([75,0,0]) rand_face(seed_vect[8]);
      translate([85,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[10]);
    }
    translate([100,8.2-manifold,0]) rotate([0,0,180]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[12]);
      translate([15,0,0]) rand_face(seed_vect[13]);
      translate([25,0,0]) rand_face(seed_vect[14]);
      translate([35,0,0]) rand_face(seed_vect[15]);
      translate([45,0,0]) rand_face(seed_vect[16]);
      translate([55,0,0]) rand_face(seed_vect[17]);
      translate([65,0,0]) rand_face(seed_vect[18]);
      translate([75,0,0]) rand_face(seed_vect[19]);
      translate([85,0,0]) scale([.9,1,1]) rand_face(seed_vect[20]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[21]);
    }
    translate([1+manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[22]);
    translate([99-manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[23]);
  }
}

module 4x_static_stagger_wall_line(front, back, side, manifold=0) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,8.2,7]);
    translate([0,manifold,0]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([15,0,0]) static_face(front[1]);
      translate([25,0,0]) static_face(front[2]);
      translate([35,0,0]) static_face(front[3]);
      translate([45,0,0]) static_face(front[4]);
      translate([55,0,0]) static_face(front[5]);
      translate([65,0,0]) static_face(front[6]);
      translate([75,0,0]) static_face(front[7]);
      translate([85,0,0]) scale([.9,1,1]) static_face(front[8]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[1]);
    }
    translate([100,8.2-manifold,0]) rotate([0,0,180]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[2]);
      translate([6,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([15,0,0]) static_face(back[1]);
      translate([25,0,0]) static_face(back[2]);
      translate([35,0,0]) static_face(back[3]);
      translate([45,0,0]) static_face(back[4]);
      translate([55,0,0]) static_face(back[5]);
      translate([65,0,0]) static_face(back[6]);
      translate([75,0,0]) static_face(back[7]);
      translate([85,0,0]) scale([.9,1,1]) static_face(back[8]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[3]);
    }
    translate([1+manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[4]);
    translate([99-manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[5]);
  }
}

module 4x_wall_top(seed) {
  seed_vect = rands(0, 100, 10, seed=seed);
  translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
    translate([10,0,0]) rand_face(seed_vect[1]);
    translate([20,0,0]) rand_face(seed_vect[2]);
    translate([30,0,0]) rand_face(seed_vect[3]);
    translate([40,0,0]) rand_face(seed_vect[4]);
    translate([50,0,0]) rand_face(seed_vect[5]);
    translate([60,0,0]) rand_face(seed_vect[6]);
    translate([70,0,0]) rand_face(seed_vect[7]);
    translate([80,0,0]) rand_face(seed_vect[8]);
    translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
  }
}

module 4x_static_wall_top(top) {
  translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) static_face(top[0]);
    translate([10,0,0]) static_face(top[1]);
    translate([20,0,0]) static_face(top[2]);
    translate([30,0,0]) static_face(top[3]);
    translate([40,0,0]) static_face(top[4]);
    translate([50,0,0]) static_face(top[5]);
    translate([60,0,0]) static_face(top[6]);
    translate([70,0,0]) static_face(top[7]);
    translate([80,0,0]) static_face(top[8]);
    translate([90,0,0]) scale([.9,1,1]) static_face(top[9]);
  }
}

module 4x_staggered_wall_top(seed) {
  seed_vect = rands(0, 100, 11, seed=seed);
  translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
    translate([15,0,0]) rand_face(seed_vect[2]);
    translate([25,0,0]) rand_face(seed_vect[3]);
    translate([35,0,0]) rand_face(seed_vect[4]);
    translate([45,0,0]) rand_face(seed_vect[5]);
    translate([55,0,0]) rand_face(seed_vect[6]);
    translate([65,0,0]) rand_face(seed_vect[7]);
    translate([75,0,0]) rand_face(seed_vect[8]);
    translate([85,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
    translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[10]);
  }
}

module 4x_static_staggered_wall_top(top) {
  translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[0]);
    translate([6,0,0]) scale([.9,1,1]) static_face(top[1]);
    translate([15,0,0]) static_face(top[2]);
    translate([25,0,0]) static_face(top[3]);
    translate([35,0,0]) static_face(top[4]);
    translate([45,0,0]) static_face(top[5]);
    translate([55,0,0]) static_face(top[6]);
    translate([65,0,0]) static_face(top[7]);
    translate([75,0,0]) static_face(top[8]);
    translate([85,0,0]) scale([.9,1,1]) static_face(top[9]);
    translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[10]);
  }
}

seed_vect = rands(0, 100, 2);
//4x_wall_line(0, seed_vect[0]);
//translate([0,0,7]) 4x_wall_top(seed_vect[0]);
//4x_stagger_wall_line(0, seed_vect[0]);
//translate([0,0,7]) 4x_staggered_wall_top(seed_vect[0]);
