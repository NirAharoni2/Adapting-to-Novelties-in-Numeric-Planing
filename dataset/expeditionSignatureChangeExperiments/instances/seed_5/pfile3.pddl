;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
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

        (= (sled_capacity s0) 13.523345670704547)

        (= (sled_supplies s0) 4.775899497955832)

        (= (factor_value f0) 0.528500464767895)
		(= (factor_value f1) 0.9875497815721177)
		(= (factor_value f2) 0.5114327816263604)

        (= (dummy_1_value d1_0) 0.8748975111456366)
		(= (dummy_1_value d1_1) 0.9224404446940648)
		(= (dummy_1_value d1_2) 0.5090337676892651)
		(= (dummy_1_value d1_3) 0.8938691519902171)

        (= (dummy_2_value d2_0) 4.295660282576745)
		(= (dummy_2_value d2_1) 6.206669461511871)
		(= (dummy_2_value d2_2) 1.081705481375756)

        (= (dummy_3_value d3_0) 5.625984751195212)
		(= (dummy_3_value d3_1) 18.911029307153736)

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

