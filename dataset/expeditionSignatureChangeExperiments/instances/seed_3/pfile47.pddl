;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.526660649890609)

        (= (sled_supplies s0) 0.14745239274205402)

        (= (factor_value f0) 0.6995062807174539)
		(= (factor_value f1) 0.686271167948369)
		(= (factor_value f2) 0.8258598695894745)
		(= (factor_value f3) 0.9375643585034452)

        (= (dummy_1_value d1_0) 0.7922078799274004)
		(= (dummy_1_value d1_1) 0.5730989848202722)
		(= (dummy_1_value d1_2) 0.6099562644959668)
		(= (dummy_1_value d1_3) 0.6854607018243608)
		(= (dummy_1_value d1_4) 0.8073404617615536)

        (= (dummy_2_value d2_0) 2.255663737406847)
		(= (dummy_2_value d2_1) 1.7339461437026307)
		(= (dummy_2_value d2_2) 3.885800040636304)

        (= (dummy_3_value d3_0) 29.014970969327322)

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

