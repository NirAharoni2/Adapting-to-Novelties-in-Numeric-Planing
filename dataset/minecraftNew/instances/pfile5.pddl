;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.3161425796704491)
		(= (value_axe a1) 0.1453030296576029)
		(= (value_axe a2) 0.7871047075262796)
		(= (value_axe a3) 0.843529900554119)

        (= (value_pickaxe p0) 0.7797604452497727)
		(= (value_pickaxe p1) 0.9259455861053001)

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

