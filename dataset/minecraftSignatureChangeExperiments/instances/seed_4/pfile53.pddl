;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.15362862581013126)
		(= (value_axe a1) 0.7096834753263602)
		(= (value_axe a2) 0.2555885221699754)
		(= (value_axe a3) 0.4386010237203274)
		(= (value_axe a4) 0.9688357928344677)

        (= (value_pickaxe p0) 0.594266872880026)
		(= (value_pickaxe p1) 0.654119443065623)
		(= (value_pickaxe p2) 0.6969509867198544)
		(= (value_pickaxe p3) 0.45730561826953464)
		(= (value_pickaxe p4) 0.26874309312376554)

        (= (value_shovel s0) 6.228180541234855)
		(= (value_shovel s1) 1.6959929929037112)
		(= (value_shovel s2) 3.1164972802808752)
		(= (value_shovel s3) 1.0638909273486319)

        (= (value_hoe h0) 17.660875396164588)
		(= (value_hoe h1) 27.745201464878292)
		(= (value_hoe h2) 23.51803740619596)
		(= (value_hoe h3) 19.638376858685888)

        (= (trees_in_map) 21)

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

