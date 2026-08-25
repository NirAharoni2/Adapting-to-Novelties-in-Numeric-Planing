;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.808431738817218)

        (= (sled_supplies s0) 4.3157951221477155)

        (= (factor_value f0) 0.6858873031331255)
		(= (factor_value f1) 0.900659934361304)
		(= (factor_value f2) 0.9473616899630567)

        (= (dummy_1_value d1_0) 0.7695600793189062)

        (= (dummy_2_value d2_0) 6.839448291782739)
		(= (dummy_2_value d2_1) 6.62133149075998)
		(= (dummy_2_value d2_2) 2.8856685480006594)
		(= (dummy_2_value d2_3) 5.215899632448734)
		(= (dummy_2_value d2_4) 4.581404021124996)

        (= (dummy_3_value d3_0) 27.312891842102292)
		(= (dummy_3_value d3_1) 21.149657596432796)

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

