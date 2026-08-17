;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.31338905902239)

        (= (sled_supplies s0) 1.462521909910508)

        (= (factor_value f0) 0.671901686842217)

        (= (dummy_1_value d1_0) 0.8467086595831688)
		(= (dummy_1_value d1_1) 0.5402573863353253)
		(= (dummy_1_value d1_2) 0.9195468075615387)
		(= (dummy_1_value d1_3) 0.8876735304555884)

        (= (dummy_2_value d2_0) 1.305678937163718)
		(= (dummy_2_value d2_1) 1.7197530020585416)
		(= (dummy_2_value d2_2) 9.947229304107545)
		(= (dummy_2_value d2_3) 9.980705516488275)
		(= (dummy_2_value d2_4) 2.8457473098163275)

        (= (dummy_3_value d3_0) 7.270419517789323)

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

