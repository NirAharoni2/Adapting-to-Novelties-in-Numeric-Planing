;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7959075032289314)
		(= (value_axe a1) 0.37263302978751556)
		(= (value_axe a2) 0.7493638087232053)
		(= (value_axe a3) 0.4814203811335208)
		(= (value_axe a4) 0.33654130539639904)

        (= (value_pickaxe p0) 0.456148287680224)
		(= (value_pickaxe p1) 0.11650945606622187)
		(= (value_pickaxe p2) 0.35449675578396944)
		(= (value_pickaxe p3) 0.41519443056181304)

        (= (value_shovel s0) 1.127145036794487)
		(= (value_shovel s1) 2.2045178167400388)
		(= (value_shovel s2) 2.8216313315507886)
		(= (value_shovel s3) 7.005188196076682)
		(= (value_shovel s4) 5.127039957814658)

        (= (value_hoe h0) 15.742898128871543)
		(= (value_hoe h1) 29.954533936517116)
		(= (value_hoe h2) 15.15841200039602)
		(= (value_hoe h3) 20.27576674331381)

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

