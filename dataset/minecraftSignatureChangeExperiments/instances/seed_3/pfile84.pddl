;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5601308400138322)
		(= (value_axe a1) 0.39834216983364734)
		(= (value_axe a2) 0.5074282113051359)
		(= (value_axe a3) 0.29809935999013115)

        (= (value_pickaxe p0) 0.8376607316735787)
		(= (value_pickaxe p1) 0.9338697950936996)
		(= (value_pickaxe p2) 0.7530756389933492)
		(= (value_pickaxe p3) 0.8197735889666709)

        (= (value_shovel s0) 1.4951451982445565)
		(= (value_shovel s1) 2.7524361342737653)
		(= (value_shovel s2) 2.4259279074905353)

        (= (value_hoe h0) 13.096536747293948)
		(= (value_hoe h1) 29.368751528301843)
		(= (value_hoe h2) 28.105276107784732)

        (= (trees_in_map) 40)

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

