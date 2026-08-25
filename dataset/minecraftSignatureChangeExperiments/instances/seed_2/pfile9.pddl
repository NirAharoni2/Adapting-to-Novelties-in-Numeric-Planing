;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3979337801249996)
		(= (value_axe a1) 0.26578678628386154)
		(= (value_axe a2) 0.20353189491346257)

        (= (value_pickaxe p0) 0.8631590244295432)
		(= (value_pickaxe p1) 0.0015583739112288164)
		(= (value_pickaxe p2) 0.7671218475174062)

        (= (value_shovel s0) 6.17815591791635)
		(= (value_shovel s1) 5.545679139041693)
		(= (value_shovel s2) 5.73825014671063)
		(= (value_shovel s3) 6.086417771142333)
		(= (value_shovel s4) 5.250126737912536)

        (= (value_hoe h0) 13.643980748050755)
		(= (value_hoe h1) 19.68974241840874)
		(= (value_hoe h2) 10.132667391151244)

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

