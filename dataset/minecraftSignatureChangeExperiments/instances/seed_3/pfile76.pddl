;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.926626391255746)
		(= (value_axe a1) 0.5820023710925061)
		(= (value_axe a2) 0.6235576432049836)

        (= (value_pickaxe p0) 0.43865140169444883)
		(= (value_pickaxe p1) 0.12612195542821325)
		(= (value_pickaxe p2) 0.9995322787903187)
		(= (value_pickaxe p3) 0.16817652602449862)
		(= (value_pickaxe p4) 0.3662461752155134)

        (= (value_shovel s0) 7.995345369478893)
		(= (value_shovel s1) 1.8547222950449869)

        (= (value_hoe h0) 19.989870945836145)
		(= (value_hoe h1) 19.593158483870802)
		(= (value_hoe h2) 14.9527909964936)
		(= (value_hoe h3) 28.49233579188689)

        (= (trees_in_map) 33)

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

