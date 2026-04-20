;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.2903967752749117)
		(= (value_axe a1) 0.6562094543602529)
		(= (value_axe a2) 0.6449558001112855)
		(= (value_axe a3) 0.9575148017726852)
		(= (value_axe a4) 0.713628262343392)

        (= (value_pickaxe p0) 0.4910705265666039)
		(= (value_pickaxe p1) 0.6828735253586564)
		(= (value_pickaxe p2) 0.609184521756758)
		(= (value_pickaxe p3) 0.813181242199753)

        (= (trees_in_map) 27)

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

