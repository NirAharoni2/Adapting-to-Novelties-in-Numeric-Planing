;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.10012914395045203)
		(= (value_axe a1) 0.6520501994894172)
		(= (value_axe a2) 0.039620213413704475)
		(= (value_axe a3) 0.010506151518672291)

        (= (value_pickaxe p0) 0.9825836265504634)
		(= (value_pickaxe p1) 0.2955498600489178)
		(= (value_pickaxe p2) 0.5965706431884413)
		(= (value_pickaxe p3) 0.44984453463009777)

        (= (value_shovel s0) 3.1929660274824956)
		(= (value_shovel s1) 1.4407535303335173)
		(= (value_shovel s2) 7.393744120161583)
		(= (value_shovel s3) 7.788692937866809)
		(= (value_shovel s4) 7.788575531475289)

        (= (value_hoe h0) 12.227246202537838)
		(= (value_hoe h1) 14.30386540072197)
		(= (value_hoe h2) 22.356137600231115)
		(= (value_hoe h3) 29.59905771780154)

        (= (trees_in_map) 37)

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

