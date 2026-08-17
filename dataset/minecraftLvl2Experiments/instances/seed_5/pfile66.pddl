;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.743411547921673)
		(= (value_axe a1) 0.5037832138923036)

        (= (value_pickaxe p0) 0.4348650767072102)
		(= (value_pickaxe p1) 0.30641458349680406)
		(= (value_pickaxe p2) 0.7353128574326354)

        (= (value_shovel s0) 3.6095609657691954)
		(= (value_shovel s1) 5.177264205046622)
		(= (value_shovel s2) 6.303338472797693)

        (= (value_hoe h0) 18.890650687304632)
		(= (value_hoe h1) 23.722832311182955)

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

