;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.17742102119293124)
		(= (value_axe a1) 0.18524604523681587)
		(= (value_axe a2) 0.7581071285095361)
		(= (value_axe a3) 0.843840946224492)

        (= (value_pickaxe p0) 0.26413724795284843)
		(= (value_pickaxe p1) 0.7873019157138492)
		(= (value_pickaxe p2) 0.10487172582949256)
		(= (value_pickaxe p3) 0.8130568416932314)
		(= (value_pickaxe p4) 0.9713745010588913)

        (= (value_shovel s0) 5.786129952566417)
		(= (value_shovel s1) 1.919945449904478)
		(= (value_shovel s2) 4.500075009150541)
		(= (value_shovel s3) 5.576062981982929)

        (= (value_hoe h0) 15.387562697931404)
		(= (value_hoe h1) 16.555728642254223)
		(= (value_hoe h2) 23.561272238974915)
		(= (value_hoe h3) 22.990779831717372)

        (= (trees_in_map) 23)

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

