;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5891326861097405)
		(= (value_axe a1) 0.8045699995342818)
		(= (value_axe a2) 0.4436437469393354)
		(= (value_axe a3) 0.04233080907153086)

        (= (value_pickaxe p0) 0.23078813729685832)
		(= (value_pickaxe p1) 0.15764699997777865)
		(= (value_pickaxe p2) 0.4643073629634704)
		(= (value_pickaxe p3) 0.2443157782732439)
		(= (value_pickaxe p4) 0.9689292711681389)

        (= (trees_in_map) 21)

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

