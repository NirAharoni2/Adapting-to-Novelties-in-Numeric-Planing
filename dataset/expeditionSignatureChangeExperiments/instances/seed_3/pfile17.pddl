;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.02048395509832)

        (= (sled_supplies s0) 2.9025851128478246)

        (= (factor_value f0) 0.6003121032277038)
		(= (factor_value f1) 0.7849444685893892)
		(= (factor_value f2) 0.619412669249036)

        (= (dummy_1_value d1_0) 0.7412978216044774)
		(= (dummy_1_value d1_1) 0.9319011313602705)

        (= (dummy_2_value d2_0) 4.765752322382937)
		(= (dummy_2_value d2_1) 7.277966248365556)
		(= (dummy_2_value d2_2) 7.3133984386250805)

        (= (dummy_3_value d3_0) 21.369949201771934)

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

