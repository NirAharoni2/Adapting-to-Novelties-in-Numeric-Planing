;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5109410438587152)
		(= (value_axe a1) 0.6886573496183911)
		(= (value_axe a2) 0.5347929097730187)
		(= (value_axe a3) 0.17954994884547482)

        (= (value_pickaxe p0) 0.9250087068760009)
		(= (value_pickaxe p1) 0.446777627625792)
		(= (value_pickaxe p2) 0.7737099952302916)
		(= (value_pickaxe p3) 0.4106454276913337)

        (= (trees_in_map) 30)

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

