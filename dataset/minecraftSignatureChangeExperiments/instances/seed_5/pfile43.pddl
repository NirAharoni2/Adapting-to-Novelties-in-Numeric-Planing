;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7130994192783359)
		(= (value_axe a1) 0.924081843712044)

        (= (value_pickaxe p0) 0.9569011150330806)
		(= (value_pickaxe p1) 0.625100119927799)
		(= (value_pickaxe p2) 0.965095936286786)
		(= (value_pickaxe p3) 0.10332297060889628)
		(= (value_pickaxe p4) 0.10288216035216813)

        (= (value_shovel s0) 1.4512021345530353)
		(= (value_shovel s1) 2.4449273218902503)
		(= (value_shovel s2) 3.621063837484318)
		(= (value_shovel s3) 4.210716890068864)

        (= (value_hoe h0) 23.61000582395047)
		(= (value_hoe h1) 24.858629519549552)
		(= (value_hoe h2) 11.675628311314428)

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

