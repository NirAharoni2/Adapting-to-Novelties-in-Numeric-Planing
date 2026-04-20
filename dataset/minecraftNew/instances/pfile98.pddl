;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.49024940645858395)
		(= (value_axe a1) 0.5488986692209509)

        (= (value_pickaxe p0) 0.8271835247890156)
		(= (value_pickaxe p1) 0.5752895692808329)
		(= (value_pickaxe p2) 0.6499621355546175)
		(= (value_pickaxe p3) 0.456846031770607)

        (= (trees_in_map) 39)

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

