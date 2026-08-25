;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7664860434424992)
		(= (value_axe a1) 0.9853978856916217)
		(= (value_axe a2) 0.17319684962025506)
		(= (value_axe a3) 0.8054583625529573)
		(= (value_axe a4) 0.29459581368010046)

        (= (value_pickaxe p0) 0.5765493099452056)
		(= (value_pickaxe p1) 0.5271179558691926)
		(= (value_pickaxe p2) 0.5747328526438223)
		(= (value_pickaxe p3) 0.3218584324362046)
		(= (value_pickaxe p4) 0.07201508107255516)

        (= (value_shovel s0) 1.0551342128823764)
		(= (value_shovel s1) 7.492319739517465)
		(= (value_shovel s2) 7.205165781635552)
		(= (value_shovel s3) 4.220204331494962)
		(= (value_shovel s4) 1.6284855697027765)

        (= (value_hoe h0) 26.76254061588625)
		(= (value_hoe h1) 20.03363393859102)
		(= (value_hoe h2) 19.405517060133892)
		(= (value_hoe h3) 22.77921040034228)
		(= (value_hoe h4) 13.152240658643812)

        (= (trees_in_map) 26)

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

