
.text

test: .long 30

.global func

func:
	ldi r16, 10
	ret