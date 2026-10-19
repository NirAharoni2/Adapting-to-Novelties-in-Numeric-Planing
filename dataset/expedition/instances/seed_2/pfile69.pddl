;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_69)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 63.366388086651845)

        (= (sled_supplies s0) 0.30947339763774895)

        (= (factor) 6.13112)
		(= (factor) 5.90451)
		(= (factor) 1.68433)
		(= (factor) 4.60691)
		(= (factor) 5.60301)
		(= (factor) 3.95134)
		(= (factor) 4.59865)
		(= (factor) 3.5583)
		(= (factor) 1.86975)
		(= (factor) 1.74355)

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