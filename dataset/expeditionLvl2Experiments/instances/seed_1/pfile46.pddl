;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.124679895589284)

        (= (sled_supplies s0) 4.921564947435503)

        (= (factor_value f0) 0.569517392388589)
		(= (factor_value f1) 0.6996636143775925)
		(= (factor_value f2) 0.966852865070295)

        (= (dummy_1_value d1_0) 0.8191890630547041)
		(= (dummy_1_value d1_1) 0.6210304986456829)
		(= (dummy_1_value d1_2) 0.8398220923871607)

        (= (dummy_2_value d2_0) 3.4626987060283536)
		(= (dummy_2_value d2_1) 5.637142144096858)

        (= (dummy_3_value d3_0) 32.86094101470848)
		(= (dummy_3_value d3_1) 94.91842005483059)
		(= (dummy_3_value d3_2) 35.88388952173214)

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

