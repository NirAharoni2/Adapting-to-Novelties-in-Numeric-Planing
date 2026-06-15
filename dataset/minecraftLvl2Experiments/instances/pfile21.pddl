;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.477592200979465)
		(= (value_axe a1) 0.2597805136529907)
		(= (value_axe a2) 0.18320972430305926)
		(= (value_axe a3) 0.5263640988105777)

        (= (value_pickaxe p0) 0.24009141844505788)
		(= (value_pickaxe p1) 0.547216264363821)
		(= (value_pickaxe p2) 0.7594766135732275)

        (= (value_shovel s0) 6.9007960684052065)
		(= (value_shovel s1) 7.5544788274759584)
		(= (value_shovel s2) 3.9617937360614044)
		(= (value_shovel s3) 4.950891784926524)
		(= (value_shovel s4) 1.3566352849243)

        (= (value_hoe h0) 25.190726511476495)
		(= (value_hoe h1) 27.735508774398113)
		(= (value_hoe h2) 14.420855529217784)
		(= (value_hoe h3) 22.181409354783124)

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

