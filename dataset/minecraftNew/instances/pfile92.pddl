;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9938050781468608)
		(= (value_axe a1) 0.9622548205464415)
		(= (value_axe a2) 0.5112165284905302)
		(= (value_axe a3) 0.0890701136146742)
		(= (value_axe a4) 0.6879891091120333)

        (= (value_pickaxe p0) 0.5770416302748597)
		(= (value_pickaxe p1) 0.16000527669985365)
		(= (value_pickaxe p2) 0.8521606686901804)

        (= (trees_in_map) 31)

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

