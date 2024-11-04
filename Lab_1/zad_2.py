import turtle
t = turtle.Turtle("turtle")

t.color = "blue"
t.speed(1)
t.width(2)

def draw(d, ilosc):
    if ilosc < 1:
        return
    for i in range(3):
        t.forward(d/4)
        t.forward(3 * d / 4)
        draw(d/2, ilosc-1)
        t.right(120)


t.left(60)
draw(100, 3)
turtle.done()