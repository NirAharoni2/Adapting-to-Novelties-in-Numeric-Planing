;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5117145973129736)
		(= (value_axe a1) 0.43234882195342383)
		(= (value_axe a2) 0.628659352285357)
		(= (value_axe a3) 0.6598426200294377)

        (= (value_pickaxe p0) 0.4362092784563516)
		(= (value_pickaxe p1) 0.09703842282599384)
		(= (value_pickaxe p2) 0.9791119154219007)

        (= (value_shovel s0) 5.83850218462904)
		(= (value_shovel s1) 1.584801230211478)
		(= (value_shovel s2) 4.0917891423416926)
		(= (value_shovel s3) 6.2750064002148775)
		(= (value_shovel s4) 7.94244492983716)

        (= (value_hoe h0) 11.320144362735666)
		(= (value_hoe h1) 10.189844269212786)
		(= (value_hoe h2) 19.598795609573948)

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

