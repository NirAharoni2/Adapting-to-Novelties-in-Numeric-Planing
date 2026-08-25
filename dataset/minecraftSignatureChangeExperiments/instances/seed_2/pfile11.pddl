;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.881437043979886)
		(= (value_axe a1) 0.9288806656380335)
		(= (value_axe a2) 0.581341007211991)
		(= (value_axe a3) 0.920616329415044)
		(= (value_axe a4) 0.6632921159465254)

        (= (value_pickaxe p0) 0.47980275277930473)
		(= (value_pickaxe p1) 0.01948288469917836)
		(= (value_pickaxe p2) 0.9606699490655239)
		(= (value_pickaxe p3) 0.11859097786627959)
		(= (value_pickaxe p4) 0.36648282624468775)

        (= (value_shovel s0) 5.832762896155174)
		(= (value_shovel s1) 7.527131375712059)

        (= (value_hoe h0) 16.165490302302704)
		(= (value_hoe h1) 27.48694012840251)

        (= (trees_in_map) 33)

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

