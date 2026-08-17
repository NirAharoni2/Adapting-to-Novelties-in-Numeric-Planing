;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.278301782393935)

        (= (sled_supplies s0) 3.480679988088412)

        (= (factor_value f0) 0.982515985211223)
		(= (factor_value f1) 0.9733127683894278)
		(= (factor_value f2) 0.654707857627338)

        (= (dummy_1_value d1_0) 0.7814947233212421)
		(= (dummy_1_value d1_1) 0.7492232377960006)

        (= (dummy_2_value d2_0) 8.776731696580159)
		(= (dummy_2_value d2_1) 4.4769125945744985)

        (= (dummy_3_value d3_0) 30.161593441325348)
		(= (dummy_3_value d3_1) 39.95978471745914)
		(= (dummy_3_value d3_2) 65.6260426695673)

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

