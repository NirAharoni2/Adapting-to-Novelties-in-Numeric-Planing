;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.357757877851459)

        (= (sled_supplies s0) 3.9484239471559324)

        (= (factor_value f0) 0.9135215042534655)
		(= (factor_value f1) 0.5194081101734555)
		(= (factor_value f2) 0.8418049615328491)

        (= (dummy_1_value d1_0) 0.639987906906317)
		(= (dummy_1_value d1_1) 0.8721643209495255)
		(= (dummy_1_value d1_2) 0.9893394588175445)
		(= (dummy_1_value d1_3) 0.5013613046377289)
		(= (dummy_1_value d1_4) 0.7033882300191523)

        (= (dummy_2_value d2_0) 5.494072329262298)
		(= (dummy_2_value d2_1) 9.831153187773872)
		(= (dummy_2_value d2_2) 9.317184749877397)
		(= (dummy_2_value d2_3) 1.2587955592782714)
		(= (dummy_2_value d2_4) 2.2280689723652216)

        (= (dummy_3_value d3_0) 41.35685812647924)
		(= (dummy_3_value d3_1) 80.60097849407863)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

