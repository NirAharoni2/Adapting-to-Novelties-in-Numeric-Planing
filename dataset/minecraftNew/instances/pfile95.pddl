;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.18071587287571322)
		(= (value_axe a1) 0.6508319471807762)
		(= (value_axe a2) 0.16873091042263988)
		(= (value_axe a3) 0.21129485449342011)
		(= (value_axe a4) 0.1754588589426319)

        (= (value_pickaxe p0) 0.2101453063011941)
		(= (value_pickaxe p1) 0.4774962372051884)
		(= (value_pickaxe p2) 0.6282066096363238)
		(= (value_pickaxe p3) 0.3525853075907899)
		(= (value_pickaxe p4) 0.8764730256911321)

        (= (trees_in_map) 36)

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

