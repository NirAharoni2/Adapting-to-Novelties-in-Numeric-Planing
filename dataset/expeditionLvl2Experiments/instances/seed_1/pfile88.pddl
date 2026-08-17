;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.152453783851422)

        (= (sled_supplies s0) 4.371828311643201)

        (= (factor_value f0) 0.7680690300412023)
		(= (factor_value f1) 0.6581738553742187)
		(= (factor_value f2) 0.9120538625652584)
		(= (factor_value f3) 0.9757432292284639)

        (= (dummy_1_value d1_0) 0.7795037699298333)
		(= (dummy_1_value d1_1) 0.8177479816266626)

        (= (dummy_2_value d2_0) 7.5128019692924575)
		(= (dummy_2_value d2_1) 3.878270216742703)
		(= (dummy_2_value d2_2) 6.330614136096748)
		(= (dummy_2_value d2_3) 5.163318819623733)

        (= (dummy_3_value d3_0) 48.95880434967818)
		(= (dummy_3_value d3_1) 40.01968998872298)

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

