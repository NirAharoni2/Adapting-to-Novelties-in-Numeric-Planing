;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.15739195402484008)
		(= (value_axe a1) 0.8325047274743672)
		(= (value_axe a2) 0.04607577320079048)
		(= (value_axe a3) 0.24097601678519753)
		(= (value_axe a4) 0.02404061122898893)

        (= (value_pickaxe p0) 0.6434059716048701)
		(= (value_pickaxe p1) 0.822395425548561)
		(= (value_pickaxe p2) 0.2218515798394176)
		(= (value_pickaxe p3) 0.7739454862250051)
		(= (value_pickaxe p4) 0.72413064761875)

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

