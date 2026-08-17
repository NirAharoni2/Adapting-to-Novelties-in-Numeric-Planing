;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.102132722103669)

        (= (sled_supplies s0) 5.1881818393690775)

        (= (factor_value f0) 0.7193159751030088)
		(= (factor_value f1) 0.972701457574407)

        (= (dummy_1_value d1_0) 0.8072280825582301)
		(= (dummy_1_value d1_1) 0.7387892359786418)
		(= (dummy_1_value d1_2) 0.8839067940012924)
		(= (dummy_1_value d1_3) 0.5662407227466925)

        (= (dummy_2_value d2_0) 6.49111862977258)

        (= (dummy_3_value d3_0) 58.627878943419276)
		(= (dummy_3_value d3_1) 93.34653037045115)
		(= (dummy_3_value d3_2) 49.62592134964719)
		(= (dummy_3_value d3_3) 88.27253237808179)
		(= (dummy_3_value d3_4) 10.335742244838444)

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

