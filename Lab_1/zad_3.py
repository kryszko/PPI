import turtle
t = turtle.Turtle("turtle")

t.color = "blue"
t.speed(1)
t.width(2)

def draw(d, ilosc):
    if ilosc < 1:
        return
    for i in range(3):
        t.forward(d/2)
        if i == 1:
            t.right(60)
            draw(d/2, ilosc -1)
            t.left(60)
        t.forward(d / 2)
        t.right(120)


t.left(60)
draw(100, 3)
turtle.done()