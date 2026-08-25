;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.426831442934024)

        (= (sled_supplies s0) 0.8731139563240159)

        (= (factor_value f0) 0.9697619727700507)
		(= (factor_value f1) 0.5987435638009848)
		(= (factor_value f2) 0.896947470867786)

        (= (dummy_1_value d1_0) 0.8374833450497314)
		(= (dummy_1_value d1_1) 0.9416190203035891)

        (= (dummy_2_value d2_0) 1.6935516195217288)
		(= (dummy_2_value d2_1) 6.811140473378395)
		(= (dummy_2_value d2_2) 9.138568689056342)
		(= (dummy_2_value d2_3) 3.9668291202803947)

        (= (dummy_3_value d3_0) 37.81746586665942)

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

