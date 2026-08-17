;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.308427945055664)

        (= (sled_supplies s0) 0.20035533023221458)

        (= (factor_value f0) 0.9746139744864681)
		(= (factor_value f1) 0.5866210541858018)
		(= (factor_value f2) 0.8881044914929678)

        (= (dummy_1_value d1_0) 0.9924479355720363)
		(= (dummy_1_value d1_1) 0.9107750723717571)
		(= (dummy_1_value d1_2) 0.6598920013965028)
		(= (dummy_1_value d1_3) 0.55343886729078)

        (= (dummy_2_value d2_0) 5.629224259497243)
		(= (dummy_2_value d2_1) 9.274212452896192)
		(= (dummy_2_value d2_2) 3.6414054493360095)
		(= (dummy_2_value d2_3) 9.043829179262108)

        (= (dummy_3_value d3_0) 15.026384055642797)
		(= (dummy_3_value d3_1) 91.13768576488067)

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

