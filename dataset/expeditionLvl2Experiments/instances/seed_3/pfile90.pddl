;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.666038750620581)

        (= (sled_supplies s0) 0.20031808988746805)

        (= (factor_value f0) 0.6923941918096848)

        (= (dummy_1_value d1_0) 0.7113739150009886)
		(= (dummy_1_value d1_1) 0.8536442982567696)
		(= (dummy_1_value d1_2) 0.6485315341385067)
		(= (dummy_1_value d1_3) 0.9993261740771058)
		(= (dummy_1_value d1_4) 0.7269971327400933)

        (= (dummy_2_value d2_0) 6.1285139724630096)
		(= (dummy_2_value d2_1) 6.492749115800443)
		(= (dummy_2_value d2_2) 5.350849006036539)
		(= (dummy_2_value d2_3) 8.806328750950046)
		(= (dummy_2_value d2_4) 6.256595935033688)

        (= (dummy_3_value d3_0) 71.842731044291)
		(= (dummy_3_value d3_1) 21.939217130627245)
		(= (dummy_3_value d3_2) 44.31399903843818)

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

