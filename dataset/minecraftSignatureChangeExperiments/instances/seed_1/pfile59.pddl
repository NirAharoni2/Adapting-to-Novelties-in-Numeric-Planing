;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6327294059296804)
		(= (value_axe a1) 0.5491230721259409)
		(= (value_axe a2) 0.05393905639716545)
		(= (value_axe a3) 0.5085281141837572)
		(= (value_axe a4) 0.1751467230959347)

        (= (value_pickaxe p0) 0.2150232188197363)
		(= (value_pickaxe p1) 0.43461226876448)
		(= (value_pickaxe p2) 0.5459568203984656)
		(= (value_pickaxe p3) 0.25041213288033703)
		(= (value_pickaxe p4) 0.27093438017989424)

        (= (value_shovel s0) 4.7110243799702385)
		(= (value_shovel s1) 4.312638512868529)
		(= (value_shovel s2) 3.823012381509761)
		(= (value_shovel s3) 1.7262746409655383)

        (= (value_hoe h0) 17.469553063672002)
		(= (value_hoe h1) 23.088425245504425)
		(= (value_hoe h2) 20.88397880839444)

        (= (trees_in_map) 37)

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

