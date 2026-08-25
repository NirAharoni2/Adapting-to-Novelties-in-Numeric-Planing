;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8841647008262403)
		(= (value_axe a1) 0.20193419343550134)

        (= (value_pickaxe p0) 0.39187139986472397)
		(= (value_pickaxe p1) 0.08845800945083204)
		(= (value_pickaxe p2) 0.6412793660017405)
		(= (value_pickaxe p3) 0.026558301619333036)

        (= (value_shovel s0) 7.54531901748767)
		(= (value_shovel s1) 4.666081657081152)
		(= (value_shovel s2) 5.017322933697563)
		(= (value_shovel s3) 1.596981870084329)
		(= (value_shovel s4) 2.6256459261923832)

        (= (value_hoe h0) 19.375566366957493)
		(= (value_hoe h1) 27.147305893631174)
		(= (value_hoe h2) 20.781025647525873)

        (= (trees_in_map) 29)

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

