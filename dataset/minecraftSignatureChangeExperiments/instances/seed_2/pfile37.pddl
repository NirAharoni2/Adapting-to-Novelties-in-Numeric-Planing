;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4788014352380281)
		(= (value_axe a1) 0.788464202850148)
		(= (value_axe a2) 0.23757444434815134)
		(= (value_axe a3) 0.5649094901927918)
		(= (value_axe a4) 0.8490086120723811)

        (= (value_pickaxe p0) 0.8562444517460635)
		(= (value_pickaxe p1) 0.2271384388425448)
		(= (value_pickaxe p2) 0.6182928063246781)
		(= (value_pickaxe p3) 0.9228066941671541)

        (= (value_shovel s0) 3.3443417485003164)
		(= (value_shovel s1) 5.310388504829922)

        (= (value_hoe h0) 17.838040817377497)
		(= (value_hoe h1) 18.13521135370148)
		(= (value_hoe h2) 22.881839009085112)
		(= (value_hoe h3) 21.22327209441284)
		(= (value_hoe h4) 15.229517022616017)

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

