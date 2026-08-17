;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.28815390395504614)
		(= (value_axe a1) 0.7499859254767937)
		(= (value_axe a2) 0.8843101443353805)
		(= (value_axe a3) 0.9866376537047351)
		(= (value_axe a4) 0.7544888755438863)

        (= (value_pickaxe p0) 0.8801683471785958)
		(= (value_pickaxe p1) 0.8261289206543758)
		(= (value_pickaxe p2) 0.16484330505681288)
		(= (value_pickaxe p3) 0.6903888824821786)

        (= (value_shovel s0) 7.084009571586298)
		(= (value_shovel s1) 6.264220693725452)

        (= (value_hoe h0) 15.529619982172687)
		(= (value_hoe h1) 24.000826348061896)
		(= (value_hoe h2) 17.797137630001245)
		(= (value_hoe h3) 18.652479735348916)
		(= (value_hoe h4) 24.616068904395732)

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

