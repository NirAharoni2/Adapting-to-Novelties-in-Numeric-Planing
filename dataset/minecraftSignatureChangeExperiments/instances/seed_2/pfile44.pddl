;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.12962220206712172)
		(= (value_axe a1) 0.73520960191491)
		(= (value_axe a2) 0.05279625932643095)
		(= (value_axe a3) 0.9581481707979478)
		(= (value_axe a4) 0.18270262715522567)

        (= (value_pickaxe p0) 0.818049776852015)
		(= (value_pickaxe p1) 0.9460210236718352)
		(= (value_pickaxe p2) 0.5992436181828189)

        (= (value_shovel s0) 6.749283206419)
		(= (value_shovel s1) 7.079468440509947)
		(= (value_shovel s2) 4.1215155656393545)

        (= (value_hoe h0) 19.91200411238073)
		(= (value_hoe h1) 29.81567295310441)
		(= (value_hoe h2) 27.054183237396877)
		(= (value_hoe h3) 12.912636104678032)
		(= (value_hoe h4) 15.02625714319606)

        (= (trees_in_map) 25)

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

