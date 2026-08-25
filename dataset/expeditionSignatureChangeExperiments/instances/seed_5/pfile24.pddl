;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.358048902632651)

        (= (sled_supplies s0) 3.847284738493318)

        (= (factor_value f0) 0.8485869880181727)
		(= (factor_value f1) 0.8994045571560043)
		(= (factor_value f2) 0.9838848247266665)

        (= (dummy_1_value d1_0) 0.8331494154236705)
		(= (dummy_1_value d1_1) 0.6379163006746855)
		(= (dummy_1_value d1_2) 0.7463301371805459)
		(= (dummy_1_value d1_3) 0.6243882702590193)

        (= (dummy_2_value d2_0) 7.332420638193826)
		(= (dummy_2_value d2_1) 8.165630233095323)
		(= (dummy_2_value d2_2) 8.943937088279903)

        (= (dummy_3_value d3_0) 88.66745851006036)
		(= (dummy_3_value d3_1) 8.115648028531815)

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

