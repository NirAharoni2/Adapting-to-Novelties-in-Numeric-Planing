;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.2438342297133652)
		(= (value_axe a1) 0.22723214753933096)
		(= (value_axe a2) 0.8763166519800799)

        (= (value_pickaxe p0) 0.6869130669343296)
		(= (value_pickaxe p1) 0.7576253756897315)
		(= (value_pickaxe p2) 0.34352497106659174)

        (= (value_shovel s0) 5.081435264225238)
		(= (value_shovel s1) 3.65542497733099)

        (= (value_hoe h0) 23.603900116999874)
		(= (value_hoe h1) 29.1212524552812)

        (= (trees_in_map) 35)

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

