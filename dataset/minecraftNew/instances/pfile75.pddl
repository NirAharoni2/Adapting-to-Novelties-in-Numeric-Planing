;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.3485043569328865)
		(= (value_axe a1) 0.3273250453146419)
		(= (value_axe a2) 0.3251402758069123)
		(= (value_axe a3) 0.23393338974147182)

        (= (value_pickaxe p0) 0.5596563687024723)
		(= (value_pickaxe p1) 0.22676353355508527)
		(= (value_pickaxe p2) 0.7620001787840135)
		(= (value_pickaxe p3) 0.6268360225111012)
		(= (value_pickaxe p4) 0.2961251518516952)

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

