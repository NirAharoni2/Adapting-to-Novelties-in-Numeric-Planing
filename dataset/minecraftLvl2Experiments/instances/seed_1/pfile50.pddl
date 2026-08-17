;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.21546427693564485)
		(= (value_axe a1) 0.8296209908379356)
		(= (value_axe a2) 0.9493464080355665)
		(= (value_axe a3) 0.40190458831325127)

        (= (value_pickaxe p0) 0.42512259700430355)
		(= (value_pickaxe p1) 0.06444119013451133)
		(= (value_pickaxe p2) 0.20613962386932072)
		(= (value_pickaxe p3) 0.14960333875736864)
		(= (value_pickaxe p4) 0.7301654668609503)

        (= (value_shovel s0) 1.7228550819498765)
		(= (value_shovel s1) 2.0899897691496414)
		(= (value_shovel s2) 6.422926445790975)
		(= (value_shovel s3) 1.6926665439747965)

        (= (value_hoe h0) 22.993206638620137)
		(= (value_hoe h1) 13.748699849003929)
		(= (value_hoe h2) 10.059920115644038)
		(= (value_hoe h3) 18.553720654829135)
		(= (value_hoe h4) 29.096325486270242)

        (= (trees_in_map) 21)

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

