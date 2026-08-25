;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7455260684490497)
		(= (value_axe a1) 0.2798704211232158)
		(= (value_axe a2) 0.5711033312622883)

        (= (value_pickaxe p0) 0.11835407273722898)
		(= (value_pickaxe p1) 0.39853051214260693)

        (= (value_shovel s0) 5.366038530620411)
		(= (value_shovel s1) 1.069782264692288)

        (= (value_hoe h0) 11.828755485202313)
		(= (value_hoe h1) 23.70952883366013)
		(= (value_hoe h2) 19.78887550377544)
		(= (value_hoe h3) 17.06805794515282)
		(= (value_hoe h4) 23.12309464427802)

        (= (trees_in_map) 21)

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

