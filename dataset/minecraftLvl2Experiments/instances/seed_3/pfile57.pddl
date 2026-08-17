;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5498653936943354)
		(= (value_axe a1) 0.6105430482134914)

        (= (value_pickaxe p0) 0.2912081186425146)
		(= (value_pickaxe p1) 0.23637568097175665)

        (= (value_shovel s0) 3.6719134352219993)
		(= (value_shovel s1) 2.478582321620782)
		(= (value_shovel s2) 1.5237175193899084)
		(= (value_shovel s3) 4.597988527287185)
		(= (value_shovel s4) 1.387435308403759)

        (= (value_hoe h0) 19.88147316632392)
		(= (value_hoe h1) 12.35261089073035)
		(= (value_hoe h2) 24.644630978624924)
		(= (value_hoe h3) 17.791699575091005)
		(= (value_hoe h4) 21.207905465590937)

        (= (trees_in_map) 20)

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

