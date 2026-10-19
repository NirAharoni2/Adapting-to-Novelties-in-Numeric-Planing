;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_70)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 119.14314689522355)

        (= (sled_supplies s0) 0.7630523489694407)

        (= (factor) 7.12086)
		(= (factor) 7.61347)
		(= (factor) 7.36901)
		(= (factor) 0.55854)
		(= (factor) 0.99264)
		(= (factor) 3.60838)
		(= (factor) 7.84801)
		(= (factor) 9.33811)
		(= (factor) 7.26711)
		(= (factor) 11.49905)

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