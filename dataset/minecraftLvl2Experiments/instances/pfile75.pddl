;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.39486212979446955)
		(= (value_axe a1) 0.4128655359003337)

        (= (value_pickaxe p0) 0.5132673052557492)
		(= (value_pickaxe p1) 0.6633111692892645)
		(= (value_pickaxe p2) 0.5891735631674033)
		(= (value_pickaxe p3) 0.1520402826355124)
		(= (value_pickaxe p4) 0.4447023002487247)

        (= (value_shovel s0) 1.2495280626831669)
		(= (value_shovel s1) 3.5678280861715077)
		(= (value_shovel s2) 3.388526388043818)
		(= (value_shovel s3) 6.435392168361294)
		(= (value_shovel s4) 2.3268498921481946)

        (= (value_hoe h0) 13.523060001011114)
		(= (value_hoe h1) 13.218952823322507)

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

