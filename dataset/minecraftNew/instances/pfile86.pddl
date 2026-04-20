;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.8208861362088007)
		(= (value_axe a1) 0.594445742523682)
		(= (value_axe a2) 0.1654952996170762)
		(= (value_axe a3) 0.6749327481325432)
		(= (value_axe a4) 0.8889920481027743)

        (= (value_pickaxe p0) 0.5440094656153369)
		(= (value_pickaxe p1) 0.7841767754433987)
		(= (value_pickaxe p2) 0.12444156465215728)

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

