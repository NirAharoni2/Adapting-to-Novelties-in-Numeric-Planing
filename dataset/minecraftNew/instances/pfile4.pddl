;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5556208060788735)
		(= (value_axe a1) 0.13764834950150728)
		(= (value_axe a2) 0.8470357279666008)
		(= (value_axe a3) 0.7334951610563062)
		(= (value_axe a4) 0.0490295259076905)

        (= (value_pickaxe p0) 0.15533752097715003)
		(= (value_pickaxe p1) 0.4509680516526463)
		(= (value_pickaxe p2) 0.6305774299168742)
		(= (value_pickaxe p3) 0.019668718535685414)

        (= (trees_in_map) 38)

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

