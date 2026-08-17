;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.3156728344126737)
		(= (value_axe a1) 0.44291089113026794)
		(= (value_axe a2) 0.9281879814639986)

        (= (value_pickaxe p0) 0.25398085676042725)
		(= (value_pickaxe p1) 0.01828881793217918)
		(= (value_pickaxe p2) 0.949201154284101)

        (= (value_shovel s0) 3.218410438796119)
		(= (value_shovel s1) 3.6983887068902126)
		(= (value_shovel s2) 7.831089473136255)
		(= (value_shovel s3) 2.9733042075583773)
		(= (value_shovel s4) 1.6001756299099283)

        (= (value_hoe h0) 27.75435229979396)
		(= (value_hoe h1) 14.877392627978427)
		(= (value_hoe h2) 14.431659262180517)
		(= (value_hoe h3) 28.753179659531682)
		(= (value_hoe h4) 14.586964359745478)

        (= (trees_in_map) 22)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

