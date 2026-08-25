;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.86451052523484)

        (= (sled_supplies s0) 4.250354369524239)

        (= (factor_value f0) 0.9676352170242555)
		(= (factor_value f1) 0.5382741101800101)
		(= (factor_value f2) 0.8774920571239493)
		(= (factor_value f3) 0.596179563983412)
		(= (factor_value f4) 0.7857763706646654)

        (= (dummy_1_value d1_0) 0.6958904851821239)
		(= (dummy_1_value d1_1) 0.7316121911245037)
		(= (dummy_1_value d1_2) 0.8767902528678592)
		(= (dummy_1_value d1_3) 0.6975212800789314)
		(= (dummy_1_value d1_4) 0.5608647400668347)

        (= (dummy_2_value d2_0) 2.0959308974938597)

        (= (dummy_3_value d3_0) 8.970561057609354)

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

