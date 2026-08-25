;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.39353734072144)

        (= (sled_supplies s0) 3.040625742603571)

        (= (factor_value f0) 0.6008347241651322)
		(= (factor_value f1) 0.8357408963452202)
		(= (factor_value f2) 0.6653215580375089)

        (= (dummy_1_value d1_0) 0.9458750134794861)

        (= (dummy_2_value d2_0) 7.96216473027346)
		(= (dummy_2_value d2_1) 5.243591071941804)
		(= (dummy_2_value d2_2) 5.737677812254287)
		(= (dummy_2_value d2_3) 1.237541129521298)

        (= (dummy_3_value d3_0) 4.384131825322435)
		(= (dummy_3_value d3_1) 59.85419725014813)
		(= (dummy_3_value d3_2) 49.3942913973318)
		(= (dummy_3_value d3_3) 86.60726266680803)

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

