;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5260582893082595)
		(= (value_axe a1) 0.605703337719748)
		(= (value_axe a2) 0.5943455334488281)
		(= (value_axe a3) 0.14981379873808254)

        (= (value_pickaxe p0) 0.4731948252749415)
		(= (value_pickaxe p1) 0.323773315373319)
		(= (value_pickaxe p2) 0.9659379487689793)
		(= (value_pickaxe p3) 0.8708992444689717)

        (= (trees_in_map) 22)

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

