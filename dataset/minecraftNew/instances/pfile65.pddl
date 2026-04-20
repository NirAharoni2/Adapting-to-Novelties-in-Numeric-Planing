;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.4841562710256647)
		(= (value_axe a1) 0.7235032869890763)

        (= (value_pickaxe p0) 0.9057885620637972)
		(= (value_pickaxe p1) 0.03603758867318496)
		(= (value_pickaxe p2) 0.11200127511677194)

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

