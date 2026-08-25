;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.11973052418370922)
		(= (value_axe a1) 0.9135774709377097)
		(= (value_axe a2) 0.3971479895876566)

        (= (value_pickaxe p0) 0.2119511389390374)
		(= (value_pickaxe p1) 0.18646986599842363)
		(= (value_pickaxe p2) 0.0377121070547175)

        (= (value_shovel s0) 4.491299776198559)
		(= (value_shovel s1) 3.6902823832666423)

        (= (value_hoe h0) 27.028876793517053)
		(= (value_hoe h1) 26.660241444292524)
		(= (value_hoe h2) 11.139850204702203)
		(= (value_hoe h3) 18.02630862100699)
		(= (value_hoe h4) 17.783848974622103)

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

