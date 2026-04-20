;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.30845470815938236)
		(= (value_axe a1) 0.2992256632066802)
		(= (value_axe a2) 0.1813355386950679)
		(= (value_axe a3) 0.4658337075224863)

        (= (value_pickaxe p0) 0.7713339948598072)
		(= (value_pickaxe p1) 0.8311269810347526)
		(= (value_pickaxe p2) 0.1479343269549792)
		(= (value_pickaxe p3) 0.19800980184225014)
		(= (value_pickaxe p4) 0.45500767232049344)

        (= (trees_in_map) 25)

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

