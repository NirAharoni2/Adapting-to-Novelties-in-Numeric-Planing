;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.391558274445647)

        (= (sled_supplies s0) 1.6476831980640496)

        (= (factor_value f0) 0.6990997956554572)
		(= (factor_value f1) 0.8748272808008475)
		(= (factor_value f2) 0.5128501082203147)
		(= (factor_value f3) 0.9802401139573043)
		(= (factor_value f4) 0.8948962082975862)

        (= (dummy_1_value d1_0) 0.8742664007985397)

        (= (dummy_2_value d2_0) 8.450936592143933)

        (= (dummy_3_value d3_0) 7.60632727533317)

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

