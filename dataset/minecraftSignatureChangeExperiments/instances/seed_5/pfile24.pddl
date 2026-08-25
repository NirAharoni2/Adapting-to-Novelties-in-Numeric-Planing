;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5926268100222287)
		(= (value_axe a1) 0.5732584537184302)
		(= (value_axe a2) 0.7401600270013194)
		(= (value_axe a3) 0.39550989913405066)

        (= (value_pickaxe p0) 0.09699875143991565)
		(= (value_pickaxe p1) 0.033165590363306796)
		(= (value_pickaxe p2) 0.2024075179964182)
		(= (value_pickaxe p3) 0.03945311523995654)
		(= (value_pickaxe p4) 0.8892574529135058)

        (= (value_shovel s0) 4.366944481646504)
		(= (value_shovel s1) 6.322431582507663)
		(= (value_shovel s2) 1.0030774249800574)
		(= (value_shovel s3) 4.291305945097104)

        (= (value_hoe h0) 27.795537700445326)
		(= (value_hoe h1) 22.38930760647562)

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

