;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7987472496091215)
		(= (value_axe a1) 0.03626926985565859)

        (= (value_pickaxe p0) 0.7674185377630393)
		(= (value_pickaxe p1) 0.5113257432655011)
		(= (value_pickaxe p2) 0.7151579278581234)
		(= (value_pickaxe p3) 0.1067436974828122)
		(= (value_pickaxe p4) 0.748964921384405)

        (= (value_shovel s0) 7.5419364115091945)
		(= (value_shovel s1) 1.4279764879556454)
		(= (value_shovel s2) 3.269728072628069)
		(= (value_shovel s3) 4.947841430179442)

        (= (value_hoe h0) 26.5611866231766)
		(= (value_hoe h1) 14.842521250002036)
		(= (value_hoe h2) 13.595448828633558)
		(= (value_hoe h3) 14.999321617803139)

        (= (trees_in_map) 39)

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

