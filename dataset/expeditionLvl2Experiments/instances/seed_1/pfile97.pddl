;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.136061461410979)

        (= (sled_supplies s0) 4.856183497137447)

        (= (factor_value f0) 0.6344411056998318)
		(= (factor_value f1) 0.586906093154699)
		(= (factor_value f2) 0.853073106847585)
		(= (factor_value f3) 0.7277718346405919)

        (= (dummy_1_value d1_0) 0.7925843096893508)
		(= (dummy_1_value d1_1) 0.5912969310618078)

        (= (dummy_2_value d2_0) 5.5896952134473725)
		(= (dummy_2_value d2_1) 6.9281751407698255)
		(= (dummy_2_value d2_2) 7.83782115357678)

        (= (dummy_3_value d3_0) 66.98818748119521)
		(= (dummy_3_value d3_1) 41.96505681334229)
		(= (dummy_3_value d3_2) 68.83940586772593)

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

