;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.2946567841561286)
		(= (value_axe a1) 0.816601682559049)
		(= (value_axe a2) 0.07090738249187956)
		(= (value_axe a3) 0.5369691661303478)
		(= (value_axe a4) 0.21962445291318833)

        (= (value_pickaxe p0) 0.6651749659698405)
		(= (value_pickaxe p1) 0.5944106155177465)

        (= (value_shovel s0) 1.6601839331331711)
		(= (value_shovel s1) 6.111730048633749)
		(= (value_shovel s2) 3.851072961230797)

        (= (value_hoe h0) 16.413719557285013)
		(= (value_hoe h1) 27.131054665064674)
		(= (value_hoe h2) 25.575107342258217)
		(= (value_hoe h3) 16.190775130611996)
		(= (value_hoe h4) 23.554612961313786)

        (= (trees_in_map) 23)

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

