;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.24508295956306925)
		(= (value_axe a1) 0.6311817482753228)
		(= (value_axe a2) 0.7704248075663176)

        (= (value_pickaxe p0) 0.057993529886354866)
		(= (value_pickaxe p1) 0.22510865285023607)

        (= (value_shovel s0) 6.69367515672095)
		(= (value_shovel s1) 5.795284281493917)
		(= (value_shovel s2) 7.170458291963979)
		(= (value_shovel s3) 6.249040286508453)
		(= (value_shovel s4) 4.162324545642084)

        (= (value_hoe h0) 25.20331009478651)
		(= (value_hoe h1) 10.324177300709628)
		(= (value_hoe h2) 16.195422769796536)
		(= (value_hoe h3) 26.906179417395077)

        (= (trees_in_map) 39)

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

