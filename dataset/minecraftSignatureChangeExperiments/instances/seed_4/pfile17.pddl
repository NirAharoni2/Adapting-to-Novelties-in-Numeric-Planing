;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.15846574442387729)
		(= (value_axe a1) 0.5841688065755173)

        (= (value_pickaxe p0) 0.49524108812963663)
		(= (value_pickaxe p1) 0.5738644822874451)

        (= (value_shovel s0) 7.565381150977961)
		(= (value_shovel s1) 6.32176331043204)
		(= (value_shovel s2) 7.779313779656926)
		(= (value_shovel s3) 1.8177704677294741)

        (= (value_hoe h0) 23.031121414770286)
		(= (value_hoe h1) 23.507930321444)

        (= (trees_in_map) 27)

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

