;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7983488705626961)
		(= (value_axe a1) 0.16737696805300517)
		(= (value_axe a2) 0.8742871520133363)
		(= (value_axe a3) 0.17635094155911546)

        (= (value_pickaxe p0) 0.149306962836942)
		(= (value_pickaxe p1) 0.4942552287863299)
		(= (value_pickaxe p2) 0.33858490927972695)
		(= (value_pickaxe p3) 0.5418630314898528)
		(= (value_pickaxe p4) 0.9040723368889024)

        (= (value_shovel s0) 5.973581956185064)
		(= (value_shovel s1) 1.0389348681027455)
		(= (value_shovel s2) 3.1827199820180976)
		(= (value_shovel s3) 4.814639320789804)
		(= (value_shovel s4) 4.405546840306681)

        (= (value_hoe h0) 24.31173318639344)
		(= (value_hoe h1) 19.68498908375345)

        (= (trees_in_map) 22)

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

