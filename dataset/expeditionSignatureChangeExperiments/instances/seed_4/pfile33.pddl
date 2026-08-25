;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.301912734791737)

        (= (sled_supplies s0) 3.2232700434869965)

        (= (factor_value f0) 0.5829135377526238)
		(= (factor_value f1) 0.5486074718213534)
		(= (factor_value f2) 0.6165106922295094)
		(= (factor_value f3) 0.9486318913419509)
		(= (factor_value f4) 0.8186982528657677)

        (= (dummy_1_value d1_0) 0.5970949946958329)
		(= (dummy_1_value d1_1) 0.7206318978064792)
		(= (dummy_1_value d1_2) 0.9873424768255823)
		(= (dummy_1_value d1_3) 0.6550649778281674)

        (= (dummy_2_value d2_0) 5.689912803848005)
		(= (dummy_2_value d2_1) 1.4182509914332369)
		(= (dummy_2_value d2_2) 9.487129651185453)
		(= (dummy_2_value d2_3) 8.88606261384719)
		(= (dummy_2_value d2_4) 7.152534559386978)

        (= (dummy_3_value d3_0) 18.672744915354517)
		(= (dummy_3_value d3_1) 91.82152720768349)
		(= (dummy_3_value d3_2) 37.91575696133574)

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

