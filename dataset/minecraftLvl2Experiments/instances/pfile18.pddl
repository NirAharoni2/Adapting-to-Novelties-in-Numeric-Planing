;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.48840411281675444)
		(= (value_axe a1) 0.03409518700657721)

        (= (value_pickaxe p0) 0.02496992161069289)
		(= (value_pickaxe p1) 0.27606166606823956)
		(= (value_pickaxe p2) 0.6490440104659817)
		(= (value_pickaxe p3) 0.28028003915678523)

        (= (value_shovel s0) 6.3808253274170275)
		(= (value_shovel s1) 1.8315737109180463)
		(= (value_shovel s2) 4.225449043440241)
		(= (value_shovel s3) 2.0621862664235566)
		(= (value_shovel s4) 3.2046356457494904)

        (= (value_hoe h0) 20.24212642958433)
		(= (value_hoe h1) 29.4713527703582)
		(= (value_hoe h2) 12.446578441837215)
		(= (value_hoe h3) 15.846297657267108)

        (= (trees_in_map) 32)

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

