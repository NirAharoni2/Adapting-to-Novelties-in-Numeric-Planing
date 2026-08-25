;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6981816809979554)
		(= (value_axe a1) 0.014273061304357015)
		(= (value_axe a2) 0.1918198146081148)
		(= (value_axe a3) 0.536411223157352)

        (= (value_pickaxe p0) 0.9698602036773476)
		(= (value_pickaxe p1) 0.21695838685794133)
		(= (value_pickaxe p2) 0.5868575083839515)
		(= (value_pickaxe p3) 0.1283273823660528)
		(= (value_pickaxe p4) 0.8468323003399395)

        (= (value_shovel s0) 4.116006915540529)
		(= (value_shovel s1) 4.6537777399388)
		(= (value_shovel s2) 5.685399214192357)
		(= (value_shovel s3) 1.9556828389955347)

        (= (value_hoe h0) 24.576114105361036)
		(= (value_hoe h1) 25.997890428153056)
		(= (value_hoe h2) 27.191337291794838)
		(= (value_hoe h3) 15.62850372165762)

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

