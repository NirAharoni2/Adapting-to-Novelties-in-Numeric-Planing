;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.19999252281759394)
		(= (value_axe a1) 0.9207205497139428)
		(= (value_axe a2) 0.483208133108198)
		(= (value_axe a3) 0.8900804254630665)

        (= (value_pickaxe p0) 0.6673013829450016)
		(= (value_pickaxe p1) 0.4196508048123151)
		(= (value_pickaxe p2) 0.7469004981684094)
		(= (value_pickaxe p3) 0.44926119135898857)
		(= (value_pickaxe p4) 0.9045110777848098)

        (= (trees_in_map) 38)

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

