;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_93)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 175.17299271886995)

        (= (sled_supplies s0) 2.205954951266001)

        (= (factor) 2.44965)
		(= (factor) 0.73693)
		(= (factor) 15.30129)
		(= (factor) 14.01187)
		(= (factor) 17.37368)
		(= (factor) 12.16488)
		(= (factor) 9.43803)
		(= (factor) 13.53588)
		(= (factor) 2.07459)
		(= (factor) 9.69583)

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