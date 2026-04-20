;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7861484185860794)
		(= (value_axe a1) 0.6120003371776369)
		(= (value_axe a2) 0.16010431526844626)
		(= (value_axe a3) 0.36696973081083406)

        (= (value_pickaxe p0) 0.14345538393631174)
		(= (value_pickaxe p1) 0.08954578133015234)
		(= (value_pickaxe p2) 0.9905600217161753)

        (= (trees_in_map) 27)

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

