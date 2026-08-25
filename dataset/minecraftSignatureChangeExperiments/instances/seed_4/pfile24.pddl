;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8832644902434844)
		(= (value_axe a1) 0.6583378834692847)
		(= (value_axe a2) 0.6987299698460181)
		(= (value_axe a3) 0.6046813899453629)

        (= (value_pickaxe p0) 0.5270921846937123)
		(= (value_pickaxe p1) 0.9874439757703913)

        (= (value_shovel s0) 3.471415769294922)
		(= (value_shovel s1) 1.570574076771356)
		(= (value_shovel s2) 5.994568432138065)

        (= (value_hoe h0) 19.961711096633664)
		(= (value_hoe h1) 20.912876103394986)
		(= (value_hoe h2) 21.957455085367904)
		(= (value_hoe h3) 14.997498994911982)

        (= (trees_in_map) 26)

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

