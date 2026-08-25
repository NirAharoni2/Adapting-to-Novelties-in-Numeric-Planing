;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4269826297513726)
		(= (value_axe a1) 0.23708297781668408)
		(= (value_axe a2) 0.889630510114104)
		(= (value_axe a3) 0.4991627606434317)
		(= (value_axe a4) 0.27297004467789576)

        (= (value_pickaxe p0) 0.6833754291716575)
		(= (value_pickaxe p1) 0.8633508228534623)
		(= (value_pickaxe p2) 0.9832913490900755)
		(= (value_pickaxe p3) 0.37661980113413895)
		(= (value_pickaxe p4) 0.26491842813483646)

        (= (value_shovel s0) 2.7512983707397005)
		(= (value_shovel s1) 3.0881810501712694)
		(= (value_shovel s2) 2.5227823482018072)
		(= (value_shovel s3) 7.4370538268137025)

        (= (value_hoe h0) 22.684459301445003)
		(= (value_hoe h1) 11.003448379520893)
		(= (value_hoe h2) 11.879881447263918)

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

