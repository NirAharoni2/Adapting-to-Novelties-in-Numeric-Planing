;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6384347476741518)
		(= (value_axe a1) 0.10304689582875115)
		(= (value_axe a2) 0.07235565929230492)
		(= (value_axe a3) 0.31462147296076637)
		(= (value_axe a4) 0.512110298186155)

        (= (value_pickaxe p0) 0.036337023416439185)
		(= (value_pickaxe p1) 0.3803144725953257)

        (= (value_shovel s0) 2.728089407671987)
		(= (value_shovel s1) 5.324565073169511)
		(= (value_shovel s2) 6.143720835783314)
		(= (value_shovel s3) 7.262522427276331)
		(= (value_shovel s4) 1.6240588877628015)

        (= (value_hoe h0) 13.58046223143717)
		(= (value_hoe h1) 25.462156518577725)
		(= (value_hoe h2) 23.112780726649955)
		(= (value_hoe h3) 29.59145362396957)

        (= (trees_in_map) 34)

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

