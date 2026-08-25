;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7215449010327221)
		(= (value_axe a1) 0.45833337453232437)
		(= (value_axe a2) 0.7814088542408769)

        (= (value_pickaxe p0) 0.36130645098077696)
		(= (value_pickaxe p1) 0.45612255733404583)

        (= (value_shovel s0) 7.489413274438011)
		(= (value_shovel s1) 5.3014712561863515)
		(= (value_shovel s2) 3.4827608580766958)

        (= (value_hoe h0) 28.512281765423218)
		(= (value_hoe h1) 22.707996965848206)

        (= (trees_in_map) 20)

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

