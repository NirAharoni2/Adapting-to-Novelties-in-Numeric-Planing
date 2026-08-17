;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.577385648636323)

        (= (sled_supplies s0) 7.531173443850956)

        (= (factor_value f0) 0.6388657033609167)
		(= (factor_value f1) 0.9435853685150566)
		(= (factor_value f2) 0.5302829812618665)
		(= (factor_value f3) 0.9344502211765668)

        (= (dummy_1_value d1_0) 0.810970430450665)
		(= (dummy_1_value d1_1) 0.9111167664599782)
		(= (dummy_1_value d1_2) 0.6771084326501388)
		(= (dummy_1_value d1_3) 0.5345659875891711)
		(= (dummy_1_value d1_4) 0.5860802723447651)

        (= (dummy_2_value d2_0) 6.641328190160192)
		(= (dummy_2_value d2_1) 1.2331857833156652)

        (= (dummy_3_value d3_0) 11.908300550451791)
		(= (dummy_3_value d3_1) 78.44649373293996)

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

