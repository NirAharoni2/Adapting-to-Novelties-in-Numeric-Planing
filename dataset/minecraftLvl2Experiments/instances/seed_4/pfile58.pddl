;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.38706720875289236)
		(= (value_axe a1) 0.05970885284867833)
		(= (value_axe a2) 0.6105481771928081)
		(= (value_axe a3) 0.42734894049612115)

        (= (value_pickaxe p0) 0.26509910496605527)
		(= (value_pickaxe p1) 0.10151398358684971)
		(= (value_pickaxe p2) 0.5741021640845534)
		(= (value_pickaxe p3) 0.09936695915096083)

        (= (value_shovel s0) 7.023031899382875)
		(= (value_shovel s1) 2.93839484352306)
		(= (value_shovel s2) 7.285749764006308)
		(= (value_shovel s3) 1.867295643741497)

        (= (value_hoe h0) 17.79124966821542)
		(= (value_hoe h1) 25.567875723209326)
		(= (value_hoe h2) 20.430478398549276)
		(= (value_hoe h3) 18.95570018538656)

        (= (trees_in_map) 25)

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

