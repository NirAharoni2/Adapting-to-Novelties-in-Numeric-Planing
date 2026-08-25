;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.944642897330521)

        (= (sled_supplies s0) 2.635139076262833)

        (= (factor_value f0) 0.9375279739005578)
		(= (factor_value f1) 0.8336583727488529)
		(= (factor_value f2) 0.6050082385951636)
		(= (factor_value f3) 0.8247377226381665)
		(= (factor_value f4) 0.5187252939998419)

        (= (dummy_1_value d1_0) 0.9854160708716772)
		(= (dummy_1_value d1_1) 0.7145985101368413)

        (= (dummy_2_value d2_0) 5.476911655652085)

        (= (dummy_3_value d3_0) 56.46477525039839)
		(= (dummy_3_value d3_1) 92.50434884647062)

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

