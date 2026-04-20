;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.3726998831963859)
		(= (value_axe a1) 0.8689826745492321)
		(= (value_axe a2) 0.54119544537351)
		(= (value_axe a3) 0.2862320974654472)
		(= (value_axe a4) 0.22741081243310102)

        (= (value_pickaxe p0) 0.870186397392357)
		(= (value_pickaxe p1) 0.8111786277739532)
		(= (value_pickaxe p2) 0.49404742292346493)
		(= (value_pickaxe p3) 0.26957510023553555)
		(= (value_pickaxe p4) 0.36261449325018824)

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

