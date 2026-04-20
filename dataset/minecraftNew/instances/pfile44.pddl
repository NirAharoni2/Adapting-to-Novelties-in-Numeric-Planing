;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.8820975124451793)
		(= (value_axe a1) 0.8433839064885479)
		(= (value_axe a2) 0.31625955489459723)
		(= (value_axe a3) 0.13493131183445395)
		(= (value_axe a4) 0.667394431540945)

        (= (value_pickaxe p0) 0.43592305301028234)
		(= (value_pickaxe p1) 0.2895273274212078)
		(= (value_pickaxe p2) 0.04522682409391077)
		(= (value_pickaxe p3) 0.3728292090594214)

        (= (trees_in_map) 22)

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

