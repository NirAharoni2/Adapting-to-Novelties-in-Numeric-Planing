;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.2450832964379267)
		(= (value_axe a1) 0.5358373840905037)
		(= (value_axe a2) 0.6951691477738473)
		(= (value_axe a3) 0.0715809971327881)
		(= (value_axe a4) 0.42488854545683374)

        (= (value_pickaxe p0) 0.4258550564226946)
		(= (value_pickaxe p1) 0.8796692865199924)
		(= (value_pickaxe p2) 0.9364840710577734)
		(= (value_pickaxe p3) 0.37423569685825275)
		(= (value_pickaxe p4) 0.8978541982105016)

        (= (value_shovel s0) 6.536418274733856)
		(= (value_shovel s1) 2.835258080438947)
		(= (value_shovel s2) 4.249002500130889)
		(= (value_shovel s3) 1.862022344570113)
		(= (value_shovel s4) 6.692551941578778)

        (= (value_hoe h0) 23.24579206851002)
		(= (value_hoe h1) 27.746870000687174)

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

