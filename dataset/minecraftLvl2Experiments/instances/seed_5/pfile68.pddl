;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.968330555156405)
		(= (value_axe a1) 0.6964386354383657)
		(= (value_axe a2) 0.2009715594361401)

        (= (value_pickaxe p0) 0.5340878916483589)
		(= (value_pickaxe p1) 0.887608983287202)

        (= (value_shovel s0) 2.205157351056787)
		(= (value_shovel s1) 3.769115239553581)
		(= (value_shovel s2) 1.2346179485373359)
		(= (value_shovel s3) 1.4057996802035653)
		(= (value_shovel s4) 2.3126157157236156)

        (= (value_hoe h0) 27.43030568789625)
		(= (value_hoe h1) 17.82889309019214)
		(= (value_hoe h2) 25.436820678919013)

        (= (trees_in_map) 23)

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

