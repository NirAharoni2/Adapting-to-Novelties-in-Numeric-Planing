;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.357695208233844)

        (= (sled_supplies s0) 5.658797841362278)

        (= (factor_value f0) 0.609074375782612)

        (= (dummy_1_value d1_0) 0.6356211702411096)
		(= (dummy_1_value d1_1) 0.5697442024057109)

        (= (dummy_2_value d2_0) 7.185268288716838)
		(= (dummy_2_value d2_1) 6.21990480585371)
		(= (dummy_2_value d2_2) 9.792058275071438)

        (= (dummy_3_value d3_0) 64.11092150315048)
		(= (dummy_3_value d3_1) 8.416941944353198)
		(= (dummy_3_value d3_2) 68.55354238181769)
		(= (dummy_3_value d3_3) 69.76743642998609)
		(= (dummy_3_value d3_4) 82.16669721281568)

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

