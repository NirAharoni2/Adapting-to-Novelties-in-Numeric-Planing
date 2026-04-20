;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.8251888193345909)
		(= (value_axe a1) 0.0789855804545615)
		(= (value_axe a2) 0.09923094540779509)
		(= (value_axe a3) 0.3646101278352717)

        (= (value_pickaxe p0) 0.7244895924645366)
		(= (value_pickaxe p1) 0.5658243552751228)
		(= (value_pickaxe p2) 0.356814017987077)

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

