;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.60886582639324)

        (= (sled_supplies s0) 1.5216963591661086)

        (= (factor_value f0) 0.9596604726995038)
		(= (factor_value f1) 0.7518109554578343)
		(= (factor_value f2) 0.7444466378426216)

        (= (dummy_1_value d1_0) 0.9824485199798108)
		(= (dummy_1_value d1_1) 0.5428861203370359)
		(= (dummy_1_value d1_2) 0.6873821234214414)

        (= (dummy_2_value d2_0) 5.9093105338130005)
		(= (dummy_2_value d2_1) 6.414729518601378)

        (= (dummy_3_value d3_0) 61.49576474654376)

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

