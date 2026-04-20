;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9596622425764877)
		(= (value_axe a1) 0.709944335390241)
		(= (value_axe a2) 0.26646453802478487)
		(= (value_axe a3) 0.47697162551835337)
		(= (value_axe a4) 0.4584309942733693)

        (= (value_pickaxe p0) 0.006594462216815478)
		(= (value_pickaxe p1) 0.5859926388015602)
		(= (value_pickaxe p2) 0.34675517445425574)
		(= (value_pickaxe p3) 0.8639278341754041)
		(= (value_pickaxe p4) 0.7391581699173679)

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

