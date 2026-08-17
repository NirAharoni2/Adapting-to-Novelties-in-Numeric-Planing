;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -4.0)
		(= (x b1) 2.0)
		(= (y b1) -0.0)

		(= (d p0) -119.0)
		(= (d p1) 33.0)

        (= (dummy_1_d d1_0) 42.0)

        (= (dummy_2_d d2_0) 2.0)
		(= (dummy_2_d d2_1) 7.0)
		(= (dummy_2_d d2_2) -2.0)

        (= (dummy_3_d d3_0) 411.0)
		(= (dummy_3_d d3_1) -1186.0)
		(= (dummy_3_d d3_2) -1298.0)
		(= (dummy_3_d d3_3) -1318.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

