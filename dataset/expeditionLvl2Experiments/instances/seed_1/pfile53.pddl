;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.928631705730266)

        (= (sled_supplies s0) 6.856857205925115)

        (= (factor_value f0) 0.9536232209164831)
		(= (factor_value f1) 0.8311342529172179)
		(= (factor_value f2) 0.671237731957448)
		(= (factor_value f3) 0.619575128242587)

        (= (dummy_1_value d1_0) 0.8875098434700017)
		(= (dummy_1_value d1_1) 0.9677146842995903)

        (= (dummy_2_value d2_0) 9.642934824887933)
		(= (dummy_2_value d2_1) 2.580466407397011)
		(= (dummy_2_value d2_2) 6.268174739138474)
		(= (dummy_2_value d2_3) 5.618064418075731)
		(= (dummy_2_value d2_4) 4.846826598949477)

        (= (dummy_3_value d3_0) 79.64566853646268)
		(= (dummy_3_value d3_1) 93.64245604016291)
		(= (dummy_3_value d3_2) 72.73785732562608)
		(= (dummy_3_value d3_3) 70.3302801914432)

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

