;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8743782177656371)
		(= (value_axe a1) 0.5132069251663592)

        (= (value_pickaxe p0) 0.31758324011456673)
		(= (value_pickaxe p1) 0.6037607350313465)
		(= (value_pickaxe p2) 0.5836119252877)
		(= (value_pickaxe p3) 0.2922887638986177)

        (= (value_shovel s0) 4.836361934532908)
		(= (value_shovel s1) 2.932860150983449)
		(= (value_shovel s2) 1.0790508977615518)
		(= (value_shovel s3) 3.175078349305528)
		(= (value_shovel s4) 1.6050159146705556)

        (= (value_hoe h0) 19.83782501741737)
		(= (value_hoe h1) 20.022978070462898)
		(= (value_hoe h2) 27.40443864548635)
		(= (value_hoe h3) 24.95813260128147)

        (= (trees_in_map) 28)

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

