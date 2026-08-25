;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8710329683679704)
		(= (value_axe a1) 0.36401442784736937)
		(= (value_axe a2) 0.9318465539698684)
		(= (value_axe a3) 0.907750110179297)

        (= (value_pickaxe p0) 0.42361096957169064)
		(= (value_pickaxe p1) 0.8840645665358958)
		(= (value_pickaxe p2) 0.1644884240665313)
		(= (value_pickaxe p3) 0.17743643549176602)
		(= (value_pickaxe p4) 0.23060267436398618)

        (= (value_shovel s0) 2.2370398661196265)
		(= (value_shovel s1) 2.215121276355398)
		(= (value_shovel s2) 4.571166854884973)
		(= (value_shovel s3) 3.517839826574809)

        (= (value_hoe h0) 20.274748008620694)
		(= (value_hoe h1) 21.19780632582955)

        (= (trees_in_map) 34)

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

