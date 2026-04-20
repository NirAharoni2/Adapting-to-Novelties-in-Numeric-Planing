;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.16379073114994325)
		(= (value_axe a1) 0.24481859517640048)

        (= (value_pickaxe p0) 0.4431233477280977)
		(= (value_pickaxe p1) 0.43355411857771087)
		(= (value_pickaxe p2) 0.6992990086440347)

        (= (trees_in_map) 37)

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

