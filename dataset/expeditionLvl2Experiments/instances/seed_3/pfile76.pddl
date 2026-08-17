;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.714326072491749)

        (= (sled_supplies s0) 2.193362689329496)

        (= (factor_value f0) 0.7298648826211662)
		(= (factor_value f1) 0.7823196258263125)
		(= (factor_value f2) 0.6553565370265391)

        (= (dummy_1_value d1_0) 0.9918329139011488)
		(= (dummy_1_value d1_1) 0.7380379749207726)
		(= (dummy_1_value d1_2) 0.6203072930290868)
		(= (dummy_1_value d1_3) 0.6008589213821369)

        (= (dummy_2_value d2_0) 1.317203158671574)
		(= (dummy_2_value d2_1) 8.918532087127389)
		(= (dummy_2_value d2_2) 1.6672235885768534)
		(= (dummy_2_value d2_3) 8.39667583303113)
		(= (dummy_2_value d2_4) 2.611841524691748)

        (= (dummy_3_value d3_0) 47.909015175934336)

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

