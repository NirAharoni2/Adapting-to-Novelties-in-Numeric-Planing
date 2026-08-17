;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.320035436422856)

        (= (sled_supplies s0) 0.46708738042599346)

        (= (factor_value f0) 0.9847283341358583)
		(= (factor_value f1) 0.6100292335831623)
		(= (factor_value f2) 0.5892451921664892)

        (= (dummy_1_value d1_0) 0.9992187902244172)
		(= (dummy_1_value d1_1) 0.843991906899153)

        (= (dummy_2_value d2_0) 6.684473350285137)
		(= (dummy_2_value d2_1) 5.221561660706475)
		(= (dummy_2_value d2_2) 1.1181459248717798)
		(= (dummy_2_value d2_3) 3.0092168189083552)
		(= (dummy_2_value d2_4) 8.219981642622638)

        (= (dummy_3_value d3_0) 27.85814321241347)
		(= (dummy_3_value d3_1) 60.869436386369)
		(= (dummy_3_value d3_2) 49.342119685620965)
		(= (dummy_3_value d3_3) 18.07411145615509)

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

