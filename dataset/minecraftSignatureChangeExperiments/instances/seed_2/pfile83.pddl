;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.612642917473427)
		(= (value_axe a1) 0.8721849066274797)

        (= (value_pickaxe p0) 0.2811035693993099)
		(= (value_pickaxe p1) 0.7584178514910986)
		(= (value_pickaxe p2) 0.9571218639989815)
		(= (value_pickaxe p3) 0.2542820872965198)
		(= (value_pickaxe p4) 0.017386063879954117)

        (= (value_shovel s0) 2.135266440083888)
		(= (value_shovel s1) 5.5172117907129525)
		(= (value_shovel s2) 2.5130197667423664)
		(= (value_shovel s3) 7.63770291765908)
		(= (value_shovel s4) 1.6453876064127138)

        (= (value_hoe h0) 27.896043144298453)
		(= (value_hoe h1) 17.079735889209992)
		(= (value_hoe h2) 28.403349654142275)
		(= (value_hoe h3) 16.779549129237356)
		(= (value_hoe h4) 12.221033177267033)

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

