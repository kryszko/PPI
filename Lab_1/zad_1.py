import turtle
t = turtle.Turtle("turtle")

t.color = "blue"
t.speed(50)
t.width(2)

def draw(d, ilosc):
    if ilosc < 1:
        return
    for i in range(4):
        t.forward(d/4)
        t.forward(3 * d / 4)
        draw(d/2, ilosc-1)
        t.right(90)


t.left(90)
draw(200, 5)
turtle.done()