;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.027075427879724057)
		(= (value_axe a1) 0.7165783459184019)
		(= (value_axe a2) 0.9853796468399774)

        (= (value_pickaxe p0) 0.9460744209744125)
		(= (value_pickaxe p1) 0.8804831618804012)

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

