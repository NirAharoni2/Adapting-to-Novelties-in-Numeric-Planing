;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.959474140124984)

        (= (sled_supplies s0) 0.7164451911532566)

        (= (factor_value f0) 0.5909342138565912)
		(= (factor_value f1) 0.8068564163334089)
		(= (factor_value f2) 0.5079493507484869)
		(= (factor_value f3) 0.8799470587315794)
		(= (factor_value f4) 0.8597340130326551)

        (= (dummy_1_value d1_0) 0.6765321741743433)
		(= (dummy_1_value d1_1) 0.5907029408766413)
		(= (dummy_1_value d1_2) 0.5099409330798333)
		(= (dummy_1_value d1_3) 0.9347661697872411)
		(= (dummy_1_value d1_4) 0.984187607640883)

        (= (dummy_2_value d2_0) 6.0932907394517475)
		(= (dummy_2_value d2_1) 9.403411396237338)
		(= (dummy_2_value d2_2) 2.9762783171652147)
		(= (dummy_2_value d2_3) 1.5697626112594492)
		(= (dummy_2_value d2_4) 4.241430558247415)

        (= (dummy_3_value d3_0) 93.0064348734766)
		(= (dummy_3_value d3_1) 91.35537758985357)
		(= (dummy_3_value d3_2) 25.02118497418052)
		(= (dummy_3_value d3_3) 55.46550951750631)

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

