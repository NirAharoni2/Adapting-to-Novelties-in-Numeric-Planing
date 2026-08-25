;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8788155075774473)
		(= (value_axe a1) 0.32279582705909693)
		(= (value_axe a2) 0.6575974218693873)
		(= (value_axe a3) 0.4980379005188602)
		(= (value_axe a4) 0.3808481928365025)

        (= (value_pickaxe p0) 0.655990781012202)
		(= (value_pickaxe p1) 0.9433999155712092)
		(= (value_pickaxe p2) 0.31462704350630666)
		(= (value_pickaxe p3) 0.6117148042116075)

        (= (value_shovel s0) 4.2033272953139384)
		(= (value_shovel s1) 2.0514650156285925)
		(= (value_shovel s2) 7.956796933366499)
		(= (value_shovel s3) 5.479297615411996)

        (= (value_hoe h0) 18.75504279458764)
		(= (value_hoe h1) 20.363309182319632)

        (= (trees_in_map) 32)

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

