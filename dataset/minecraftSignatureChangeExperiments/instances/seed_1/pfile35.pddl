;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8575878253608825)
		(= (value_axe a1) 0.3195744372072056)

        (= (value_pickaxe p0) 0.3831476259821177)
		(= (value_pickaxe p1) 0.5802537596763331)

        (= (value_shovel s0) 7.431881616794988)
		(= (value_shovel s1) 3.799500153366293)

        (= (value_hoe h0) 27.600603375468236)
		(= (value_hoe h1) 25.171210564083513)

        (= (trees_in_map) 24)

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

