;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.531536598932352)

        (= (sled_supplies s0) 3.3075986679632083)

        (= (factor_value f0) 0.8232709228409383)
		(= (factor_value f1) 0.6088572415773672)
		(= (factor_value f2) 0.920800956825258)
		(= (factor_value f3) 0.5693276979270001)
		(= (factor_value f4) 0.879845712040518)

        (= (dummy_1_value d1_0) 0.584640741791085)
		(= (dummy_1_value d1_1) 0.8029762267768406)
		(= (dummy_1_value d1_2) 0.8075405497286288)

        (= (dummy_2_value d2_0) 8.542024587034224)

        (= (dummy_3_value d3_0) 60.02326896213779)
		(= (dummy_3_value d3_1) 22.963832961629773)

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

