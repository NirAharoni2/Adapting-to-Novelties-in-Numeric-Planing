;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7688063346585038)
		(= (value_axe a1) 0.8815142609926362)
		(= (value_axe a2) 0.08940640511748488)
		(= (value_axe a3) 0.3920454630414496)
		(= (value_axe a4) 0.9110235236921983)

        (= (value_pickaxe p0) 0.7341323698099532)
		(= (value_pickaxe p1) 0.6169116351968758)

        (= (value_shovel s0) 2.1656121950851226)
		(= (value_shovel s1) 4.460917082205034)
		(= (value_shovel s2) 3.927296920902793)
		(= (value_shovel s3) 4.512568319701436)
		(= (value_shovel s4) 4.456448090336661)

        (= (value_hoe h0) 11.813171064492945)
		(= (value_hoe h1) 26.239284504213416)
		(= (value_hoe h2) 18.80129511559684)

        (= (trees_in_map) 26)

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

