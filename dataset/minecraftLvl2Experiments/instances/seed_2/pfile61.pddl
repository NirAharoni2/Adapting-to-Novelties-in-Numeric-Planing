;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.11047794984373616)
		(= (value_axe a1) 0.0014697066637543443)
		(= (value_axe a2) 0.09598445023573055)
		(= (value_axe a3) 0.03284318886599957)

        (= (value_pickaxe p0) 0.4338862672582896)
		(= (value_pickaxe p1) 0.1926919132094843)
		(= (value_pickaxe p2) 0.8570378227545159)
		(= (value_pickaxe p3) 0.818583036316203)
		(= (value_pickaxe p4) 0.8475008469420463)

        (= (value_shovel s0) 2.220698482383921)
		(= (value_shovel s1) 6.972265793858638)
		(= (value_shovel s2) 6.668789534258807)
		(= (value_shovel s3) 4.987028119189387)
		(= (value_shovel s4) 7.755223792957121)

        (= (value_hoe h0) 28.93251073557711)
		(= (value_hoe h1) 16.18831430509352)

        (= (trees_in_map) 38)

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

