;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.46099712398817283)
		(= (value_axe a1) 0.4341544968748594)
		(= (value_axe a2) 0.4414246979983846)
		(= (value_axe a3) 0.7675009419618711)

        (= (value_pickaxe p0) 0.936296270494063)
		(= (value_pickaxe p1) 0.532601151416519)
		(= (value_pickaxe p2) 0.9696652180807548)
		(= (value_pickaxe p3) 0.5960155055047185)

        (= (value_shovel s0) 1.724941342235748)
		(= (value_shovel s1) 6.69981205428804)
		(= (value_shovel s2) 3.9362009897715384)
		(= (value_shovel s3) 1.3661790151365178)
		(= (value_shovel s4) 7.846069783028862)

        (= (value_hoe h0) 10.657412396218138)
		(= (value_hoe h1) 21.539814805362344)
		(= (value_hoe h2) 19.639885828652496)

        (= (trees_in_map) 31)

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

