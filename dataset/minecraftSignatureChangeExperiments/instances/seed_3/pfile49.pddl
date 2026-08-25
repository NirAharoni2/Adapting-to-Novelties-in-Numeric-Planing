;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5745086937973595)
		(= (value_axe a1) 0.5497480490509635)
		(= (value_axe a2) 0.48758721444923403)
		(= (value_axe a3) 0.2798494978660362)
		(= (value_axe a4) 0.7093958240281814)

        (= (value_pickaxe p0) 0.9116238450083326)
		(= (value_pickaxe p1) 0.10245747443427511)
		(= (value_pickaxe p2) 0.6686923136997897)
		(= (value_pickaxe p3) 0.37130245591439837)

        (= (value_shovel s0) 4.603550876744244)
		(= (value_shovel s1) 7.269906820862254)

        (= (value_hoe h0) 29.206410322574076)
		(= (value_hoe h1) 22.871083087897937)
		(= (value_hoe h2) 13.901741253044646)
		(= (value_hoe h3) 28.414181224376268)

        (= (trees_in_map) 25)

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

