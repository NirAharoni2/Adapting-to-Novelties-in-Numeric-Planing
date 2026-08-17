;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.352869599011271)

        (= (sled_supplies s0) 2.690721160082574)

        (= (factor_value f0) 0.6346263238371406)
		(= (factor_value f1) 0.5312629859936467)
		(= (factor_value f2) 0.5814765290518642)
		(= (factor_value f3) 0.8047120992845698)

        (= (dummy_1_value d1_0) 0.7204716972369443)
		(= (dummy_1_value d1_1) 0.6358886948880839)

        (= (dummy_2_value d2_0) 4.457839590292596)
		(= (dummy_2_value d2_1) 4.627339144604679)
		(= (dummy_2_value d2_2) 7.690866842871767)
		(= (dummy_2_value d2_3) 2.1675931283776233)
		(= (dummy_2_value d2_4) 5.588848366838905)

        (= (dummy_3_value d3_0) 31.69303481915022)
		(= (dummy_3_value d3_1) 56.78812396386638)

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

