;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.34858912346448556)
		(= (value_axe a1) 0.41249478111032145)

        (= (value_pickaxe p0) 0.2788087192095784)
		(= (value_pickaxe p1) 0.781299861601231)
		(= (value_pickaxe p2) 0.4924023324802167)
		(= (value_pickaxe p3) 0.17043002121661766)
		(= (value_pickaxe p4) 0.8841571949007268)

        (= (value_shovel s0) 7.500771747936775)
		(= (value_shovel s1) 1.3253914885466014)
		(= (value_shovel s2) 4.214033963506417)
		(= (value_shovel s3) 2.546823677494186)

        (= (value_hoe h0) 22.78209365862171)
		(= (value_hoe h1) 17.174436891946943)
		(= (value_hoe h2) 15.957323177081824)

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

