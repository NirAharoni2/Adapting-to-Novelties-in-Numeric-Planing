;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9323891563508028)
		(= (value_axe a1) 0.2930463981121526)
		(= (value_axe a2) 0.909767125390049)
		(= (value_axe a3) 0.6857908157768504)

        (= (value_pickaxe p0) 0.025387207427338354)
		(= (value_pickaxe p1) 0.19136018329773474)
		(= (value_pickaxe p2) 0.7194278441166542)
		(= (value_pickaxe p3) 0.5271466766078536)
		(= (value_pickaxe p4) 0.300935807609538)

        (= (trees_in_map) 24)

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

