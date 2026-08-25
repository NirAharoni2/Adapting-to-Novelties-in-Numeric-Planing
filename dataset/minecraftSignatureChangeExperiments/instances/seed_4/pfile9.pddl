;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9627552174102675)
		(= (value_axe a1) 0.6529674578754117)

        (= (value_pickaxe p0) 0.8708981110964545)
		(= (value_pickaxe p1) 0.7173524703437558)
		(= (value_pickaxe p2) 0.04050325970566282)
		(= (value_pickaxe p3) 0.387472689843987)

        (= (value_shovel s0) 4.010752957138784)
		(= (value_shovel s1) 7.509493940447595)

        (= (value_hoe h0) 21.446096882188595)
		(= (value_hoe h1) 28.882779020753112)
		(= (value_hoe h2) 13.309111496297952)
		(= (value_hoe h3) 15.924093672172575)
		(= (value_hoe h4) 19.424581199810603)

        (= (trees_in_map) 40)

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

