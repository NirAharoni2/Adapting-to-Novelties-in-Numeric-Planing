;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.19732954705982364)
		(= (value_axe a1) 0.33345686527258833)
		(= (value_axe a2) 0.5003679203557984)

        (= (value_pickaxe p0) 0.4307638091580185)
		(= (value_pickaxe p1) 0.8136278812222184)
		(= (value_pickaxe p2) 0.28325936705691934)
		(= (value_pickaxe p3) 0.615816125055232)
		(= (value_pickaxe p4) 0.6692686105027198)

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

